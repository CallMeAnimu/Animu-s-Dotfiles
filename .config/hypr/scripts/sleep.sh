swayidle -w timeout 3600 'hyprlock' \
			timeout 7200 'hyprctl dispatch dpms off' \
			resume 'hyprctl dispatch dpms on' \
            timeout 43200 'systemctl suspend' \
            before-sleep 'hyprlock' &
