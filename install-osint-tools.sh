echo "-------------------- A simple shell script to install OSINT tools --------------------"
echo "Author: ray-tracer96024"

cd

echo "Creating a file named osint_tools in the \$HOME folder..."

mkdir $HOME/osint_tools

cd osint_tools

echo "--------------------"
echo "Installing exif tool..."
sudo apt install -y exif

echo "--------------------"
echo "Installing PhoneInfoga..."
git clone https://github.com/sundowndev/PhoneInfoga.git
cd PhoneInfoga
python3 -m pip install -r requirements.txt --user
cp config.example.py config.py
python3 phoneinfoga.py -v
python3 phoneinfoga.py -h

cd $HOME/osint_tools

echo "--------------------"
echo "Installing Sherlock..."
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
python3 sherlock.py --help

cd $HOME/osint_tools

echo "--------------------"
echo "Installing QRgen..."
git clone https://github.com/h0nus/QRGen.git
cd QRGen
python3 -m pip install -r requirements.txt
python3 qrgen.py

cd $HOME/osint_tools

echo "--------------------"
echo "Installing noisy..."
git clone https://github.com/1tayH/noisy.git
cd noisy
python noisy.py --help

cd $HOME/osint_tools

echo "--------------------"
echo "Installing Photon Scanner..."
git clone https://github.com/s0md3v/Photon.git
cd Photon
python3 photon.py -h

cd $HOME/osint_tools

echo "--------------------"
echo "Installing Raccon Scanner"
pip3 install raccoon-scanner
racoon --help

cd $HOME/osint_tools

echo "--------------------"
echo "Installing CT-Exposer..."
git clone https://github.com/chris408/ct-exposer.git
cd ct-exposer
python3 -m pip install -r requirements.txt

cd $HOME/osint_tools

echo "--------------------"
echo "Installing dnstwist..."
pip3 install dnspython GeoIp whois requests ssdeep cffi
git clone https://github.com/elceef/dnstwist.git
cd dnstwist
./dnstwist.py --help

cd 

echo "-------------------- Installation completed --------------------"
echo "Exiting..."
exit
