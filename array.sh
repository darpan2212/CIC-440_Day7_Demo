cnt=0;

fruits[((cnt++))]='Mangoes';
fruits[((cnt++))]='Oranges';
fruits[((cnt++))]='Kiwi';

echo ${fruits[@]};

echo ${fruits[2]};

echo ${!fruits[@]};

echo "Length of an array is : "${#fruits[@]};

echo 'o/p by for each loop'
for f in ${fruits[@]}
do
	echo $f;
done


echo 'o/p by for loop'
for f in ${!fruits[@]}
do
	echo "at index $f : "${fruits[f]};
done
