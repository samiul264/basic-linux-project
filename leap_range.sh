#! /bin/bash

read -p "Enter starting year: " start
read -p "Enter ending year: " end

count=0

echo "Leap Years betweeb $start and $end are:"

for ((year=start; year<=end; year++))
do
if [ $((year % 400)) -eq 0 ] || [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 ]; then
echo $year
count=$((count + 1))
fi
done
echo "Total number of leap year: $count"
