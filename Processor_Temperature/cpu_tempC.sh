#!/bin/sh

#clear
echo ""
echo "Processor temperatrue: "
while true
    sleep 0.15
    do
        temp=$(sudo cat /sys/devices/virtual/thermal/thermal_zone0/temp | cut -c1-3 | sed -e 's/\(..\)/\1./') 
        echo "${temp}°C"
        sleep 5
        #clear
    done
#clear
