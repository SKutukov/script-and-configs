# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/skutukov/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/skutukov/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/skutukov/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/skutukov/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup


conda activate base
python3 /home/skutukov/.config/polybar/hashrate/get_hash.py
