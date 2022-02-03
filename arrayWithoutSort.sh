for ((i=0;i<10;i++))
do
	num[$i]=$((RANDOM%900+100));
done

op="";

for ((i=0;i<10;i++))
do
	if [ $i -eq 0 ]
	then
		n="${num[i]}";
	else
		n="$op\n${num[i]}";
	fi
	op=`echo $n`;
done

echo -e $op;

secondSmallest=`echo -e $op | sort | head -2 | tail -1`;
secondLargest=`echo -e $op | sort | tail -2 | head -1`;
echo "Second Smallest value from all is "$secondSmallest;
echo "Second Largest value from all is "$secondLargest;


echo ${num[@]};
