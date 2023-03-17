#!/bin/bash
echo "################Creating some useful directories.."
mkdir ~/bin ~/dev ~/docs ~/work ~/tmp
mkdir ~/dev/demo ~/dev/miscellaneous ~/dev/projects ~/dev/tests
sudo apt update
echo "################Installing useful tools.."
sudo apt install net-tools
sudo apt install ffmpeg
sudo apt install openvpn
sudo apt install colordiff
sudo apt install tree
sudo apt install unzip
sudo apt install vim
sudo apt install gzip
sudo apt install mtr
sudo apt install iperf3
sudo apt install neofetch
sudo apt install ncdu
sudo apt install wget
sudo apt install fd-find
sudo apt install virt-manager
sudo apt install deluge
echo "################Installing some useless but needed tools.."
sudo apt install sl
sudo apt install cowsay
echo "################Installing latex.."
sudo apt install texlive-latex-extra
sudo apt install texlive-extra-utils
echo "################Installing git.."
sudo apt install git
echo "################Installing go.."
sudo ./download-and-install-golang.sh
echo "################Installing tldr.."
sudo apt install nodejs npm
sudo npm install -g tldr
tldr --update
sudo apt install snapd
echo "################Installing visual studio code.."
sudo snap install code --classic
echo "###############Installing sublime text.."
sudo snap install sublime-text --classic
echo "################Installing postman.."
sudo snap install postman --classic
echo "################Installing firefox.."
sudo snap install firefox --classic
echo "################Installing spotify.."
sudo snap install spotify --classic
echo "################Installing skype.."
sudo snap install skype --classic
echo "################Installing discord.."
sudo snap install discord --classic
echo "################Installing slack.."
sudo snap install slack --classic
echo "################Installing keepassxc.."
sudo snap install keepassxc --classic
echo "################Installing nmap.."
sudo snap install nmap --classic
echo "################Installing btop.."
sudo snap install btop --classic
echo "################Installing kubectl.."
sudo snap install kubectl --classic
echo "################Installing helm.."
sudo snap install helm --classic
echo "################Installing hugo.."
sudo snap install hugo --classic
echo "################Installing docker.."
sudo snap install docker --classic
echo "################Installing gimp.."
sudo snap install gimp --classic
echo "################Installing vlc.."
sudo snap install vlc --classic
echo "################Installing deja-dup.."
sudo snap install deja-dup --classic
echo "################Installing remmina.."
sudo snap install remmina --classic
echo "################Installing obsidian.."
./download-obsidian-latest-snap-release.sh
OBSIDIAN_SNAP_FILENAME=$(ls ~/bin/ | grep -oP "obsidian(.*)")
SNAP_FILE_PATH="/home/matteo/bin/${OBSIDIAN_SNAP_FILENAME}"
sudo snap install --dangerous $SNAP_FILE_PATH
echo "################Creating useful aliases.."
echo "# custom aliases" >> ~/.bashrc
echo "alias dev='cd ~/dev'" >> ~/.bashrc
echo "alias work='cd ~/work'" >> ~/.bashrc
echo "alias home='cd ~'" >> ~/.bashrc
echo "alias root='cd /'" >> ~/.bashrc
echo "alias fd='fdfind'" >> ~/.bashrc
source ~/.bashrc
echo "################Including snap in PATH.."
echo "# include snapd in PATH" >> ~/.bashrc
echo "PATH=$PATH:/snap/bin" >> ~/.bashrc
source ~/.bashrc


                                             
