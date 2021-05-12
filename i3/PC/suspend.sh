gpu_num=0
utilization=$(nvidia-smi --format=csv,noheader,nounits --query-gpu=utilization.gpu -i ${gpu_num})

if [ $utilization -lt 10 ]
then
    systemctl suspend
   
fi
