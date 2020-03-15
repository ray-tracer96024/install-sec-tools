echo "-------------------- A simple shell script to install anonimity tool --------------------"
echo "Author: ray-tracer96024"

cd

echo "Creating a file named anon_tools in the \$HOME folder..."

mkdir $HOME/anon_tools

cd anon_tools

echo "--------------------"
echo "Installing anonsurf..."
git clone https://github.com/Und3rf10w/kali-anonsurf.git
cd kali-anonsurf
sudo ./installer.sh

cd

echo "-------------------- Installation completed --------------------"
echo "Exiting..."
exit
