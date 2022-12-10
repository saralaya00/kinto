# Setup Kinto for steam deck
function kinto_install(){	
 sudo steamos-readonly disable
 sudo pacman-key --init
 sudo pacman-key --populate archlinux

 cd /home/deck/devel/code/kinto/
 python3 setup.py
 sudo rm -rf /etc/pacman.d/gnupg

 # Reset readonly status
 sudo steamos-readonly enable
}