acpi --ac-adapter | grep 'off' &>/dev/null
if [ $? -eq 0 ]; then
	value=$(upower -i $(upower -e | grep 'BAT') | awk '/percentage/ {print substr($2, 1, length($2) - 1)}')

	if (($value > 98)); then
		icon=" "
	elif (($value > 75)); then
		icon=" "
	elif (($value > 40)); then
		icon=" "
	elif (($value > 10)); then
		icon=" "
	else
		icon=" "
	fi
	printf "$icon "
else
	printf "  "
fi
get_capacity="$(cat /sys/class/power_supply/BAT1/capacity)"
printf "$get_capacity%%"
