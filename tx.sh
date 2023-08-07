#!/bin/bash
top_count = 5
valid=true
count=1
while [ $valid == true ]
do
echo $count
((count++))
sudo sendook -f 26.9946M -0 368 -1 368 -p 12082 -r 11 1011001011011001011001001011001011001
sleep 1
	if [ $count -gt 4000 ] 
	then 
		echo  $valid
		valid=false
	fi
done
