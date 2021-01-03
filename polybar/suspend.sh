
if zenity --question --title="Query" --text="Would you like to suspend?"
then 
    systemctl suspend
else
    echo "not suspend"
fi
