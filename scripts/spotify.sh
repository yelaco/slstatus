title="$(playerctl metadata --player=spotify xesam:title 2>/dev/null)"
if [ $? -eq 0 ]; then
	printf "    $title "
fi
