sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install unzip
sudo apt install python3.6
sudo apt install python3.6-distutils
sudo apt-get install libsndfile1-dev

python3.6 -m pip install -r requirements.txt

#wget --content-disposition https://b.catgirlsare.sexy/ZLBcq5NYKaZu.zip
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1nCrOBI8my-yjFeGXMR2bbeaNvPHEIbgT' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1nCrOBI8my-yjFeGXMR2bbeaNvPHEIbgT" -O wavs.zip && rm -rf /tmp/cookies.txt
unzip wavs.zip
rm wavs.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oYS__mSNkUDb90s23CCw-Zy7XlPMGjyn' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1oYS__mSNkUDb90s23CCw-Zy7XlPMGjyn" -O zhongli_training && rm -rf /tmp/cookies.txt