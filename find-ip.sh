public_ip="$(ifconfig eth0 | grep 'inet ' | awk -F' ' '{print $2}')"
sed 's/$private_ip/'"$public_ip"'/g'

curl -s https://raw.githubusercontent.com/imaximix/kube-quick-install/master/node | sed 's/$public_ip/'"$(ifconfig eth0 | grep 'inet ' | awk -F' ' '{print $2}')"'/g'
