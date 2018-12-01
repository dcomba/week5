#!/bin/bash

echo "Got a berry and need to know what it is?"

echo "Let's start with color..."

for color in black blue red
do
	echo "Is the berry $color?"

done

read color_answer

if [ "$color_answer" == "black" ]
then
	echo "You've got a blackberry!"
elif [ "$color_answer" == "blue" ]
then
	echo "You've got a blueberry!"
else
	echo "Hmmm...we need more information..."

	for shape in smooth_and_round kinda_bumpy_looking
	do
		echo "Is your berry $shape?"
	done

	read shape_answer

	if [ "$shape_answer" == "smooth_and_round" ]
	then
		echo "You've got a cranberry!"
	else
		if  [ "$shape_answer" == "kinda_bumpy_looking" ]
		then

			echo "Ok, can you see its seeds on the ouside of its skin?"

			read seeds_answer

			if [ "$seeds_answer" == "yes" ]
			then
				echo "You've got a strawberry!"
			else
				echo "You've got a raspberry!"
			fi
		fi

	fi
fi

echo "So, what kind of berry did you get?"

read berry_answer

echo "Awesome! A "$berry_answer" is delicious!"

exit



