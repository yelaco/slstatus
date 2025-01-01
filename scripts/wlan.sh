case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
up) printf "  $(iwgetid -r)" ;;
down) printf "󰤭  Disconnected" ;;
esac
