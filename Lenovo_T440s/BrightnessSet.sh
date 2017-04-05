sudo tee /sys/class/backlight/intel_backlight/brightness <<< $((${1}*$((851/100))))

