#!/usr/bin/env bash

## Define some variables to make it less typing
update='apt update'
user=$USER




	#Update and Upgrade
	echo "Updating and Upgrading"
	$update

	#$install dialog 
	cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(
	 0 "snapd" on
	 1 "PyCharm Pro" off    # any option can be set to default to "on"
         2 "git" off
	 3 "vscode" off
	 4 "i3-wm" off
         5 "tex full" off
         6 "telegram" off
	 7 "anaconda" off
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
            sudo snap install vscode --classic
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
            echo "anaconda"
            wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
            bash Anaconda3-2019.03-Linux-x86_64.sh
            conda info
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
	    sudo apt install cmake libncurses5-dev libncursesw5-dev git
            mkdir ~/opt
	    cd ~/opt
            git clone https://github.com/Syllo/nvtop.git
	    mkdir -p nvtop/build && cd nvtop/build
            cmake ..
            make
            sudo make install
	    cd - 
            ;;
        
        
   
    esac
done

   

