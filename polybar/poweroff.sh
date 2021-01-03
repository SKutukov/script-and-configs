
if zenity --question --title="Query" --text="Would you like to poweroff?"
then 
    poweroff
else
    echo "not poweroff"
fi
