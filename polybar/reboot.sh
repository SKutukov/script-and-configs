
if zenity --question --title="Query" --text="Would you like to reboot?"
then 
    reboot
else
    echo "not poweroff"
fi
