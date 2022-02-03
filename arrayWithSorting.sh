for ((i=0;i<10;i++))
do
	num[$i]=$((RANDOM%900+100));
done

echo "Before sorting an array : "${num[@]};

for ((i=0;i<$((${#num[@]}-1));i++))
do
	for((j=$(($i+1));j<${#num[@]};j++))
	do
		if [ ${num[i]} -gt ${num[j]} ]
		then
			temp=${num[i]};
			num[$i]=${num[j]};
			num[$j]=$temp;
		fi
	done
done

echo "After sorting an array : "${num[@]};


secondSmallest=${num[1]};
secondLargest=${num[8]};
echo "Second Smallest value from all is "$secondSmallest;
echo "Second Largest value from all is "$secondLargest;

