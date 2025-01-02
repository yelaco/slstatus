# Check Ethernet and Wi-Fi connection
if [ "$(cat /sys/class/net/en*/operstate 2>/dev/null)" = "up" ]; then
	printf "󰌹 Connected"
elif [ "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" = "up" ]; then
	printf "  $(iwgetid -r)"
else
	printf "󰤭  Disconnected"
fi
