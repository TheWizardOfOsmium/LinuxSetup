#install a bunch of stuff
sudo apt-get install vim
sudo apt-get install rake
curl -Lo- https://bit.ly/janus-bootstrap | bash
sudo apt-get install nodejs
sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.6-amd64
sudo apt-get -f install
sudo apt-get install wine1.6
wget http://winetricks.org/winetricks
sudo cp winetricks /usr/bin
sudo chmod +x /usr/bin/winetricks
winetricks allfonts
sudo apt-get install mysql-server
sudo apt-get install vlc
sudo apt-get install git
sudo apt-get install mono-complete
sudo apt-get install curl

#download mt4
wget -O ~/Downloads/mt4setup2.exe "http://files.metaquotes.net/metaquotes.software.corp/mt4/mt4setup.exe"

#set up basic get stuff
git config --global user.name "Tripp"
git config --global user.email "trippalamb@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
git config --global core.editor "vim"

#set up directories for programming projects
cd ~
mkdir Projects
cd Projects

mkdir BlackjackSim
cd BlackjackSim
git init
git remote add origin https://github.com/TheWizardOfOsmium/BlackjackSim.git
git pull origin master

mkdir ~/Projects/PersonalityNation
cd ~/Projects/PersonalityNation
git init
git remote add origin https://github.com/TheWizardOfOsmium/PersonalityNation.git
git pull origin master






#start manual installation of mt4 in wine
wine '/home/tripp/Downloads/mt4setup2.exe'
