#!/bin/bash

git clone "https://github.com/HamzaQureshi21/team-fleming.git"
cd team-fleming/scripts/
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python $file >> ../team-fleming.csv
	
	elif [[ $file == *.R ]];
	then
		Rscript $file >> ../team-fleming.csv
	elif [[ $file == *.c || $file == *.cpp ]];
	then
		g++ $file 
		./a.out >> ../team-fleming.csv
		rm a.out
	fi
done
