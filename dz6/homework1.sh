#!/bin/bash
i=0
while read line; do ((++i)); echo "line$i,$line,"; done < /etc/os-release
