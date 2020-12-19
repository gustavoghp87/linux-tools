#!/bin/bash

echo
echo "Temperature: "
cat /sys/class/thermal/thermal_zone*/temp

temp_file=/sys/class/thermal/thermal_zone*/temp

while read line; do
	temp=$line;
done < $temp_file

echo
echo "Temperature: "
echo $((temp/1000))
echo
