gpu_num=0
utilization=$(nvidia-smi --format=csv,noheader,nounits --query-gpu=utilization.gpu -i ${gpu_num})

cd /home/server/beach_safety_test/model_tester/model_tester

if [ $utilization -lt 25 ]
then
    if zenity --question --title="Query" --text="Would you like to hibernate?"
    then 
        systemctl hibernate
    else
        echo "not hib"
fi
else
    zenity --info \
       --text="Stop GPU firstly"

fi



