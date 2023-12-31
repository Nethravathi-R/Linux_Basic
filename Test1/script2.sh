#!/bin/bash
<< 'C'
arr="10 20 30 40"
for i in $arr
do
	sum=`expr $sum + $i`
	
done
echo "Sum is $sum"
#C
#check services are running or not send mail if not
services="sshd jenkins uuid rsync ssh"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i service is not running" | mail -s "$i service is not running" nethravathir1210@gmail.com
	fi
done
#C
#!/bin/bash
ls *.txt > txtfile
echo "Before"
cat txtfile
a=`sed 's/.txt$/.html/g' txtfile`
echo "After: $a"
#C
#!/bin/bash
services="sshd ssh jenkins"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i services is not running" >> mailfile
		echo
	fi
done
if [ -S mailfile ]
then 
	cat mailfile | mail -s "Service is not running" nethravathir1210@gmail.com
fi
#C

#!/bin/bash
arr=("1" "2" "3" "4")
for i in $arr
do
	echo "Element of array are ${arr[*]}"
#	echo "2nd element is ${arr[1]}"
done

#C

#i/bin/bash
#!/bin/bash
size=`df -h . |awk -F " " 'NR==2{print $(NF-1)}' |sed 's/%//g'`
if [ $size -gt 30 ]
then
	echo "Disk storage is $size"
	echo "Disk storage is "$size"" | mail -s "Subject :Disk storage reached thresold value" nethravathir1210@gmail.com
fi

C
#!/bin/bash
echo "enter string"
read string
len=`expr length "$string"`
i=0
while [ $i -lt $len ]
do
	letter=`echo "$string" | awk -F "" '{print $NF}'`
	i=`expr $i + 1`
	string=`echo "$string" | sed 's/.$//'`
	rev=`echo "$rev$letter"`
done
echo "$rev"

