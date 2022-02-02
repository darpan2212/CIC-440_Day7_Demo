

a=5;
b=6;

echo $a $b;

temp=$a;
a=$b;
b=$temp;

a=$(($a+$b));
b=$(($a-$b;));
a=$(($a-$b));
echo $a $b;


for((cnt=0;cnt<10;cnt++))
do
	arr[$cnt]=$((RANDOM%900 +100));
done

echo ${arr[@]};


