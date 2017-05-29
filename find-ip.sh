public_ip="$(ifconfig eth0 | grep 'inet ' | awk -F' ' '{print $2}')"
sed 's/$private_ip/'"$public_ip"'/g'
