#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20
MAX_WORKING_HOUR=40;
PROBLEMATIC_SCENARIO=36;

function getWorkingHour() {
	case $1 in
		$PRESENT)
			empHr=8;
			;;

		$PART_TIME)
			empHr=4;
			;;
		*)
			empHr=0;
		;;
	esac;
	echo $empHr;
}

totalWage=0;
totalWorkingHour=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	#to avoid $((36+8)) totalWorkHour scenario
	if [ $totalWorkingHour -eq $PROBLEMATIC_SCENARIO ]
	then
		workingHour=$(getWorkingHour $PART_TIME);
	else
		workingHour=$(getWorkingHour $((RANDOM%3)));	
	fi

	((totalWorkingHour+=$workingHour));
	dailyWage=$(($workingHour * $WAGE_PER_HOUR));
	totalWage=$(($totalWage + $dailyWage));

	#to store the daily wage in array
	wage[$day]=$dailyWage;
	((day++));
done

echo "Employee's monthly wage : $"$totalWage" USD (Total working Hour : "$totalWorkingHour" Hour)";

echo ${wage[@]};

echo '----------------for each loop-------------------';
for index in ${!wage[@]}
do
	echo "Day $index : "${wage[index]};
done


echo '----------------for loop-------------------';
for ((i=0;i<${#wage[@]};i++))
do
	echo "Day $i : "${wage[i]};
done
