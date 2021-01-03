
if zenity --question --title="Query" --text="Would you like to hibernate?"
then 
    systemctl hibernate
else
    echo "not hib"
fi
