echo "-------------------- A simple shell script to install OS hardeing tools --------------------"
echo "Author: ray-tracer96024"

echo "Installing firejail..."
sudo apt install -y firejail

echo "Installing apparmor..."
sudo apt install -y apparmor

echo "Installing ufw..."
sudo apt install -y ufw

echo "Installing fali2ban..."
sudo apt-get install -y fail2ban

echo "Installing snort..."
sudo apt-get install -y build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev liblzma-dev openssl libssl-dev
sudo apt-get install -y libnghttp2-dev
sudo apt install -y snort

echo "Creating a directory named snort_src..."
cd 
mkdir $HOME/snort_src
cd snort_src
wget https://www.snort.org/downloads/snort/daq-2.0.6.tar.gz
wget https://www.snort.org/downloads/snort/snort-2.9.15.1.tar.gz
tar xvzf daq-2.0.6.tar.gz
tar xvzf snort-2.9.15.1.tar.gz
rm -rf daq-2.0.6.tar.gz snort-2.9.15.1.tar.gz
cd daq-2.0.6
./configure && make && sudo make install
cd ..
cd snort-2.9.15.1
./configure --enable-sourcefire && make && sudo make install

cd
exit
