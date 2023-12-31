#!/bin/bash
<< 'C'
# Adding 2 number 
echo "Enter the 1st number: $1"
#read num1
echo "ENter the 2nd number: $2"
#read num2
sum=`expr $1 + $2`
echo "Sum is : $sum"
mul=`expr $1 \* $2`
echo "Multiplication of 2 number is : $mul"


#TO FINS SUM OF 1ST N NUMBERA

#!/bin/bash
echo "Enter the number"
read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $sum + $num`
	num=`expr $num - 1`
done
echo "Sum of n is : $sum"
#C
#FACTORIAL OF NUMBER

#!/bin/bash
echo "Enter the number"
read num
fact=1
while [ $num -gt 0 ]
do
	fact=`expr $num \* $fact`
	num=`expr $num - 1`
done
echo "The factorial of $fact"
#C

#To search pattern in a file
echo "Enter the pattern to search"
read pattern
grep -rl $pattern * > patternfile
if [ $? -eq 0 ]
then
	echo "The below files contains the pattern:"
	cat patternfile
else
	echo "The pattern doesn't exist in any of the file" 
fi
#C

#Print lines in a file
#!/bin/bash
echo "Enter the  filename to print lines"
read filename
while read line
do
	echo $line
done < $filename

#C

#Print number if character in a file
#!/bin/bash
echo "Enter the filename"
read filename
num=1
while read line
do
	count=`echo "$line" | wc -c`
	echo "Line $num : $count"
	num=`expr $num + 1`
done < $filename

#C

#Display employee name if age is >30
#!/bin/bash

echo "Enter the filename"
read filename
#age=`awk -F " " 'NR>1 {print $2}' $filename`
#echo "$age"
count=1
while read line
do
	age=`echo "$line" | awk -F " " '{print $2}'`
	if [ $count -gt 1 ]
	then
		if [ $age -gt 30 ]
		then
			name=`echo "$line" | awk -F " " '{print $1}'`
			echo "$name"
		fi
	fi
	count=`expr $count + 1`
done < $filename
#C

#Print line in reverse order
#!/bin/bash
echo "Enter the filename"
read filename
count=`cat $filename | wc -l`
while read line
do
	rev=`head -$count $filename | tail -1`
	echo "$rev"
	count=`expr $count - 1`

done < $filename

#C

#Reverse word
#Reverse string/word
#Method 1
#!/bin/bash
echo "Enter the string"
read string
length=`expr length "$string"`
i=0
while [ $i -lt $length ]
do
	letter=`echo "$string" | awk -F "" '{print $NF}'`
	i=`expr $i + 1`
	string=`echo "$string" | sed 's/.$//'`
	result=`echo "$result$letter"`
done
echo "$result"

#C
#!/bin/bash
echo "Enter filename"
read string
length=`expr length "$string"`
i=0
while [ $i -lt $length ]
do
	letter=`echo "$string" | awk -F "" '{print $NF}'`
	i=`expr $i + 1`
	string=`echo "$string" |sed 's/.$//'`
	result=`echo "$result$letter"`
done
echo "$result"

#C
#!/bin/bash
var=`df -h . | awk -F " " 'NR==2{print$(NF-1)}' | sed 's/%//g'`
echo "$var"
C
#disk storage thresold value
#!/bin/bash
size=`df -h . | awk -F " " 'NR==2{print$(NF-1)}' | sed 's/%//g'`
echo "Drive size is:$size"
if [ $size -gt 35 ]
then
	echo "Storage reached maximum value" | mail -s "Disk storage reached thresold value" nethravathir1210@gmail.com
fi



