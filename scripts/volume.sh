value="$(amixer sget Master | awk '/\[on\]/ { gsub(/[\[\]]/, "", $5); print $5; exit } /\[off\]/ { print "0%"; exit }')"
if [ $value == "0%" ]; then
	printf "  "
else
	printf "  "
fi
printf "$value%"
