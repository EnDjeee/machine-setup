#!/bin/bash
echo "################Creating some useful directories.."
mkdir ~/bin ~/dev ~/docs ~/work ~/tmp
mkdir ~/dev/demo ~/dev/miscellaneous ~/dev/projects ~/dev/tests
sudo apt update
echo "################Installing useful tools.."
sudo apt install ffmpeg
sudo apt install openvpn
sudo apt install colordiff
sudo apt install tree
sudo apt install unzip
sudo apt install rdesktop
sudo apt install vim
sudo apt install gzip
sudo apt install mtr
sudo apt install neofetch
sudo apt install ncdu
sudo apt install wget
sudo apt install fd-find
sudo apt install virt-manager
echo "################Installing some useless but needed tools.."
sudo apt install sl
sudo apt install cowsay
echo "################Installing latex.."
sudo apt install texlive-latex-extra
sudo apt install texlive-extra-utils
echo "################Installing git.."
sudo apt install git
echo "################Installing tldr.."
sudo apt install nodejs npm
sudo npm install -g tldr
tldr --update
echo "################Installing java.."
sudo apt install default-jdk
echo "################Installing maven.."
sudo apt install maven
echo "################Installing intellij-idea.."
sudo apt install snapd
sudo snap install intellij-idea-community --classic
echo "################Installing go.."
sudo snap install go --classic
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

                                             
