while read line; do ((++i)); echo "line$i,$line,"; done < /etc/os-release
