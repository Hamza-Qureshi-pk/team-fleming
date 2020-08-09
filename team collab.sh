#!/bin/bash

git clone "https://github.com/HamzaQureshi21/team-fleming.git"

cd team-fleming/scriptss/
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python $file >> ../fleming.csv
	elif [[ $file == *.rb ]];
	then
		ruby $file >> ../fleming.csv
	elif [[ $file == *.R ]];
	then
		Rscript $file >> ../fleming.csv
	elif [[ $file == *.ipynb ]];
	then
		ipython $file >> ../fleming.csv
	elif [[ $file == *.c || $file == *.cpp ]];
	then
		g++ $file 
		./a.out >> ../fleming.csv
		rm a.out
	elif [[ $file == *.pl ]];
	then
		perl $file >> ../fleming.csv
	elif [[ $file == *.java ]];
        then
                javac $file
		fname=`echo $file | cut -d\. -f1`
		java $fname >> ../fleming.csv
	fi
done
