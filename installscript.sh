#!/usr/bin/env bash

## Define some variables to make it less typing
update='apt update'
user=$USER
sudo apt-get install -y dialog 



	#Update and Upgrade
	echo "Updating and Upgrading"
	$update

	#$install dialog 
	cmd=(dialog --separate-output --checklist "Select options:" 29 76 16)
options=(
	0 "snapd" on
	1 "PyCharm Pro" off    # any option can be set to default to "on"
     2 "git" off
	3 "vscode" off
	4 "i3-wm" off
     5 "tex full" off
     6 "telegram" off
	7 "xidlehook" off
	8 "rofi" off
	9 "compton" off
	10 "py3status" off
	11 "moka+faba theme" off 
	12 "i3lock-fancy" off
	13 "feh" off
	14 "thunar" off
	15 "lxappearance" off
	16 "arc-theme" off
	17 "tmux" off
	18 "nvtop" off
	19 "plank" off
     20 "vlc" off
     21 "pycharm commynity" off
     22 "cuda 10.1" off
     23 "init i3 config" off
     24 "slack" off
     25 "bleachbit" off
     26 "ncdu" off
     27 "brightness" off
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
          sudo apt install -y snapd
          ;;
        1)
          echo "PyCharm Pro"
          sudo snap install pycharm-professional --classic
          ;;
	2)
          echo "Git"
          sudo apt-get install git -y
          ;;
	3)
          echo "vscode"
          sudo snap install code --classic
          ;;
	4)
          echo "i3-wm"
          sudo apt install i3 -y
          ;;
	5)
          echo "tex full"
          sudo apt install texlive-full -y
          ;;
	6)
          echo "telegram"
          sudo snap install telegram-desktop
          ;;
	7)
          echo "xidlehook"
          curl -L https://nixos.org/nix/install | sh
          nix-env -iA nixpkgs.xidlehook
          ;;
	8)
          echo "rofi"
          sudo apt-get install rofi -y
	     
          ;;
	9)
          echo "compton"
          sudo apt-get install compton -y
	     
          ;;
	10)
          echo "py3status"
	     sudo apt-get install python3-pip -y
          sudo pip3 install i3pystatus colour netifaces
	     
          ;;
	11)
          echo "moka + faba"
          sudo add-apt-repository -u ppa:snwh/ppa
	     sudo apt-get update
	     sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons -y
	     
          ;;
	12)
          echo "i3lock-fancy"
          sudo apt-get install i3lock-fancy -y
          ;;

	13)
          echo "feh"
	     sudo apt-get install feh -y
	     
          ;;

	14)
          echo "thunar"
          sudo apt-get install thunar -y 
	     
          ;;

	15)
          echo "lxappearance"
          sudo apt-get install lxappearance -y
	     
          ;;

	16)
          echo "arc-theme"
          sudo apt-get install arc-theme -y
	     
          ;;
	17)
          echo "tmux"
          sudo apt-get install tmux -y 
	     
          ;;
	18)
          echo "nvtop"
	     sudo apt install cmake libncurses5-dev libncursesw5-dev git -y
          mkdir ~/opt
	     cd ~/opt
          git clone https://github.com/Syllo/nvtop.git
	     mkdir -p nvtop/build && cd nvtop/build
          cmake ..
          make
          sudo make install
	     cd - 
          ;;
	19)
          echo "plank"
	     sudo apt-get install plank -y
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
          echo "cuda 10.1"
          wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
          sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
          wget http://developer.download.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
          sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
          sudo apt-key add /var/cuda-repo-10-1-local-10.1.243-418.87.00/7fa2af80.pub
          sudo apt-get update
          sudo apt-get -y install cuda
          ;;
     23)
          echo "init config"
	     mkdir ~/opt
	     cd ~/opt            
          git clone https://github.com/SKutukov/script-and-configs
          cp ./script-and-configs/i3/PC/*  ~/.config/i3/
          cp ./script-and-configs/polybar/*  ~/.config/polybar/
          cp ./script-and-configs/i3/PC/Xresources ~/.Xresources
	     cd - 
          ;;
	24)
          echo "slack"
	     sudo snap install slack --classic
          ;;
	25)
          echo "bleachbit"
	     sudo apt install -y bleachbit
          ;;
     26)
         echo "ncdu"
	    sudo apt-get install -y ncdu
            ;;
     27)
         echo "brightness"
         mkdir -p ~/opt
         cd ~/opt
         git clone https://github.com/multiplexd/brightlight.git
         cd brightlight
         make
         sudo chown root ./brightlight
         sudo chmod u+s ./brightlight
         sudo mv ./brightlight /usr/local/bin
            ;;
     28)
         echo "dropbox"
         echo "deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu disco main" > /etc/apt/sources.list.d/dropbox.list
         sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
         sudo apt update
         sudo apt install -y python3-gi python3-gpg dropbox
         dropbox start -i
         dropbox autostart y
            ;;
     29)
         echo "ranger"
	    sudo apt install -y ranger
            ;;
    esac
done

   

