wanip(){
  wan_file_hist="$HOME/.config/wanip"
  current_wan=$(dig +short myip.opendns.com @resolver1.opendns.com)
  if [ -f "$wan_file_hist" ] ; then
    if ! grep -q "$current_wan" "$wan_file_hist" ; then
      echo "WAN: $current_wan (changed from $(head -n 1 $wan_file_hist))"
      echo "$current_wan" > "$wan_file_hist"
    else
      echo "WAN: $current_wan"
    fi
  else
    echo "WAN: $current_wan" ; echo "$current_wan" > "$wan_file_hist"
  fi
}
