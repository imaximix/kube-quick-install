ifconfig eth0 | grep 'inet ' | awk -F' ' '{print $2}'
