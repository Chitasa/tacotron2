import numpy as np
import torch

import pickle

from hparams import create_hparams
from model import Tacotron2
from layers import TacotronSTFT, STFT
from audio_processing import griffin_lim
from train import load_model
from text import text_to_sequence

hparams = create_hparams()
hparams.sampling_rate = 22050

checkpoint_path = "checkpoint_1000"
model = load_model(hparams)
model.load_state_dict(torch.load(checkpoint_path)['state_dict'])
_ = model.cuda().eval().half()

text = "Hello World"
sequence = np.array(text_to_sequence(text, ['english_cleaners']))[None, :]
sequence = torch.autograd.Variable(
    torch.from_numpy(sequence)).cuda().long()

mel_outputs, mel_outputs_postnet, _, alignments = model.inference(sequence)

with open("test.pickle", "wb") as f:
    pickle.dump(mel_outputs_postnet, f, protocol=pickle.HIGHEST_PROTOCOL)
