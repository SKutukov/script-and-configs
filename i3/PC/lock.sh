export PRIMARY_DISPLAY="DP-2"
export SECONDARY_DISPLAY="DP-4"
killall xidlehook
# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 60 seconds, undim if user becomes active` \
  --timer 300 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1 \
    && xrandr --output "$SECONDARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1 && \
     xrandr --output "$SECONDARY_DISPLAY" --brightness 1' \
  `# Finally, suspend an hour after it locks` \
  --timer 1800 \
    'sh /home/skutukov/.config/i3/suspend.sh' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1 && \
     xrandr --output "$SECONDARY_DISPLAY" --brightness 1' \

