#!/usr/bin/env bash

## Define some variables to make it less typing
update='apt update'
user=$USER
sudo pacman -S dialog


	#Update and Upgrade
	echo "Updating and Upgrading"
	$update

	#$install dialog 
	cmd=(dialog --separate-output --checklist "Select options:" 29 76 16)
options=(
	0 "snapd" off
	1 "flatpack" on    # any option can be set to default to "on"
        2 "conda" off
	3 "vscode" off
	4 "git" off
        5 "tex full" off
        6 "telegram" off
	7 "xidlehook" off
	8 "yay" off
	9 "mousepad" off
	10 "openvpn" off
	11 "moka+faba theme" off 
	12 "i3lock-fancy" off
	13 "feh" off
	14 "yandex-disk" off
	15 "remmina" off
	16 "arc-theme" off
	17 "tmux" off
	18 "nvtop" off
	19 "krita" off
        20 "vlc" off
        21 "pycharm community" off
        22 "mattermost" off
        23 "init i3 config" off
        24 "steam" off
        25 "bleachbit" off
        26 "ncdu" off
        27 "chromium" off
        28 "dropbox" off
        29 "ranger" off
)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
	0)
          echo "snap"
	  # broken
	  sudo pacman -S snapd
          sudo systemctl enable snapd
          sudo systemctl start snapd
          sudo ln -s /var/lib/snapd/snap /snap
          ;;
        1)
          echo "flatpack"
	  sudo pacman -S flatpak libpamac-flatpak-plugin
          ;;
	2)
          echo "conda"
          yay -S conda
          ;;
	3)
          echo "vscode"
	  flatpak install flathub com.visualstudio.code
	  flatpak run com.visualstudio.code
          ;;
	4)
          echo "git"
	  sudo pacman -S git
          ;;
	5)
          echo "tex full"
          sudo pacman -Syyu texlive-most texlive-bin texlive-lang
          ;;
	6)
          echo "telegram"
	  flatpak install flathub org.telegram.desktop
          flatpak run org.telegram.desktop
	  ;;
	7)
          echo "xidlehook"
          #curl -L https://nixos.org/nix/install | sh
          #nix-env -iA nixpkgs.xidlehook
          ;;
	8)
          echo "yay"
	  sudo pacman -S make
	  cur_dir=$(pwd)
          mkdir -p ~/opt          
          cd ~/opt
	  rm -rf yay-git
          git clone https://aur.archlinux.org/yay-git.git
          cd yay-git
	  makepkg -si
	  cd $cur_dir
          ;;
	9)
          echo "mousepad"
	  pamac install mousepad
          ;;
	10)
          echo "openvpn"
	  sudo pacman -S networkmanager-openvpn 
          ;;
	11)
          echo "moka + faba"
          #sudo add-apt-repository -u ppa:snwh/ppa
	  #sudo apt-get update
	  #sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons -y
	     
          ;;
	12)
          echo "i3lock-fancy"
          #sudo apt-get install i3lock-fancy -y
          ;;

	13)
          echo "feh"
	  #sudo apt-get install feh -y
	     
          ;;

	14)
          echo "yandex-disk"
          yay -S yandex-disk 
	     
          ;;

	15)
          echo "remmina"
          pamac install remmina
	     
          ;;

	16)
          echo "arc-theme"
          #sudo apt-get install arc-theme -y
	     
          ;;
	17)
          echo "tmux"
          #sudo apt-get install tmux -y 
	     
          ;;
	18)
          echo "nvtop"
	  #sudo apt install cmake libncurses5-dev libncursesw5-dev git -y
          #mkdir ~/opt
	  #cd ~/opt
          #git clone https://github.com/Syllo/nvtop.git
	  #mkdir -p nvtop/build && cd nvtop/build
          #cmake ..
          #make
          #sudo make install
	  #cd - 
          ;;
	19)
          echo "krita"
	  sudo snap install krita
          ;;
	20)
          echo "vlc"
	  sudo snap install vlc
          ;;
        
     21)
          echo "PyCharm community"
          sudo snap install pycharm-community --classic
          ;;
     22)
          echo "mattermost"
	  sudo snap install mattermost-desktop
          ;;
     23)
          echo "init config"
	  mkdir ~/opt
	  cd ~/opt            
          #git clone https://github.com/SKutukov/script-and-configs
          #cp ./script-and-configs/i3/PC/*  ~/.config/i3/
          #cp ./script-and-configs/polybar/*  ~/.config/polybar/
          #cp ./script-and-configs/i3/PC/Xresources ~/.Xresources
	  #cd - 
          ;;
	24)
          echo "steam"
	  flatpak install com.valvesoftware.Steam
          ;;
	25)
          echo "bleachbit"
	  #sudo apt install -y bleachbit
          ;;
     26)
         echo "ncdu"
	 #sudo apt-get install -y ncdu
            ;;
     27)
         echo "chromium"
	 sudo pacman -S chromium
         ;;
     28)
         echo "dropbox"
	 #yay -Syu dropbox
	 flatpak install flathub com.dropbox.Client
         flatpak run com.dropbox.Client
	 #dropbox start -i
         #dropbox autostart y
            ;;
     29)
         echo "ranger"
	 #sudo apt install -y ranger
         ;;
    esac
done

   

