sudo tee /sys/class/backlight/intel_backlight/brightness <<< $(($(cat /sys/class/backlight/intel_backlight/brightness) + 100))
