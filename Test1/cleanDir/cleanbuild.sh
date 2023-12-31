#!/bin/bash
<<'C'
echo "Enter the file name u want ot retain"
read retain
ls -lt | awk -F " " 'NR>1 {print $ NF}' > output2
total=`cat output2 | wc -l`
delete=`expr $total - $retain`
head -$delete output2
C

service="sshd jenkins tomcat crontab"
for i in $service
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "service "$i" is not running"
#		echo "$i is not running" | mail -s "Subject: $i service is not running" nethravathir1210@gmail.com
	fi
done
