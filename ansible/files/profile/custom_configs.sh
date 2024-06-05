export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/local/go/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/flatpak/exports/bin:/snap/bin"

force_color_prompt=yes

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# custom aliases
alias dev='cd ~/dev'
alias work='cd ~/work'
alias home='cd ~'
alias root='cd /'
alias fd='fdfind'
alias code='flatpak run com.visualstudio.code'
alias subl='flatpak run com.sublimetext.three'
