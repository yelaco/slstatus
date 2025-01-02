#!/bin/sh

im="$(fcitx5-remote -n)"

if [[ "$im" == "unikey" ]]; then
	echo "  VN"
else
	echo "  EN"
fi
