#!/bin/bash
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
sudo apt update
if [ $? -eq 0 ]; then
    echo "${GREEN}Typed password is correct. Installing software..${NORMAL}"
else
    echo "${RED}Typed password is wrong. Please retry.${NORMAL}"
    exit 1
fi
set -x
echo "${GREEN}################Creating some useful directories..${NORMAL}"
mkdir -p ~/bin ~/dev ~/docs ~/work ~/tmp
mkdir -p ~/dev/demo ~/dev/miscellaneous ~/dev/projects ~/dev/tests
echo "${GREEN}################Installing useful tools..}${NORMAL}"
sudo -i apt install -y net-tools
sudo -i apt install -y bind9-dnsutils
sudo -i apt install -y nmap
sudo -i apt install -y ffmpeg
sudo -i apt install -y openvpn
sudo -i apt install -y colordiff
sudo -i apt install -y tree
sudo -i apt install -y unzip
sudo -i apt install -y vim
sudo -i apt install -y gzip
sudo -i apt install -y mtr
sudo -i apt install -y iperf3
sudo -i apt install -y neofetch
sudo -i apt install -y btop
sudo -i apt install -y ncdu
sudo -i apt install -y wget
sudo -i apt install -y fd-find
sudo -i apt install -y virt-manager
sudo -i apt install -y deluge
sudo -i apt install -y python3-pip
sudo -i apt install python*-venv
sudo -i pip install --upgrade pip 
echo "${GREEN}################Installing some useless but needed tools..${NORMAL}"
sudo -i apt install sl
sudo -i apt install cowsay
echo "${GREEN}################Installing latex..${NORMAL}"
sudo -i apt install texlive-latex-extra
sudo -i apt install texlive-extra-utils
echo "${GREEN}################Installing git..${NORMAL}"
sudo -i apt install git
echo "${GREEN}################Installing hugo..${NORMAL}"
sudo -i apt install hugo
echo "${GREEN}################Installing tldr..${NORMAL}"
sudo -i pip3 install tldr
tldr --update
echo "${GREEN}################Installing flatpak..${NORMAL}"
sudo -i apt install flatpak
sudo -i flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "${GREEN}################Installing visual studio code..${NORMAL}"
sudo -i flatpak install -y flathub com.visualstudio.code
echo "${GREEN}###############Installing sublime text..${NORMAL}"
sudo -i flatpak install -y flathub com.sublimetext.three
echo "${GREEN}################Installing postman..${NORMAL}"
sudo -i flatpak install -y flathub com.getpostman.Postman
#echo "${GREEN}################Installing firefox..${NORMAL}"
#sudo -i flatpak install -y flathub org.mozilla.firefox
#echo "${GREEN}################Installing chrome..${NORMAL}"
#sudo -i flatpak install -y flathub com.google.Chrome
echo "${GREEN}################Installing spotify..${NORMAL}"
sudo -i flatpak install -y flathub com.spotify.Client
echo "${GREEN}################Installing skype..${NORMAL}"
sudo -i flatpak install -y flathub com.skype.Client
echo "${GREEN}################Installing discord..${NORMAL}"
sudo -i flatpak install -y flathub com.discordapp.Discord
echo "${GREEN}################Installing slack..${NORMAL}"
sudo -i flatpak install -y flathub com.slack.Slack
echo "${GREEN}################Installing keepassxc..${NORMAL}"
sudo -i flatpak install -y flathub org.keepassxc.KeePassXC
echo "${GREEN}################Installing gimp..${NORMAL}"
sudo -i flatpak install -y flathub org.gimp.GIMP
echo "${GREEN}################Installing vlc..${NORMAL}"
sudo -i flatpak install -y flathub org.videolan.VLC
echo "${GREEN}################Installing deja-dup..${NORMAL}"
sudo -i flatpak install -y flathub org.gnome.DejaDup
echo "${GREEN}################Installing remmina..${NORMAL}"
sudo -i flatpak install -y flathub org.remmina.Remmina
echo "${GREEN}################Installing kubectl..${NORMAL}"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo -i install -o root -g root -m 0755 $PWD/kubectl /usr/local/bin/kubectl
rm -f $PWD/kubectl
echo "${GREEN}################Installing helm..${NORMAL}"
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
echo "${GREEN}################Installing go..${NORMAL}"
sudo -i bash $PWD/download-and-install-golang.sh
echo "${GREEN}################Installing docker..${NORMAL}"
curl -fsSL https://get.docker.com -o $PWD/get-docker.sh
sudo -i bash $PWD/get-docker.sh
rm -f $PWD/get-docker.sh
echo "${GREEN}################Creating useful aliases..${NORMAL}"
echo "# custom aliases" >> ~/.bashrc
echo "alias dev='cd ~/dev'" >> ~/.bashrc
echo "alias work='cd ~/work'" >> ~/.bashrc
echo "alias home='cd ~'" >> ~/.bashrc
echo "alias root='cd /'" >> ~/.bashrc
echo "alias fd='fdfind'" >> ~/.bashrc
source ~/.bashrc

