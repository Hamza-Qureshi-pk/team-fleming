#!/bin/bash.sh

git clone "https://github.com/HamzaQureshi21/team-fleming.git"
cd team-fleming/scripts/ || exit
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python "$file" >> ../team-fleming.csv
	elif [[ $file == *.rb ]];
	then
		ruby "$file" >> ../team-fleming.csv
	elif [[ $file == *.R ]];
	then
		Rscript "$file" >> ../team-fleming.csv
	elif [[ $file == *.ipynb ]];
	then
		ipython "$file" >> ../team-fleming.csv
	elif [[ $file == *.c || $file == *.cpp ]];
	then
		g++ "$file" 
		./a.out >> ../team-fleming.csv
		rm a.out
	elif [[ $file == *.pl ]];
	then
		perl "$file" >> ../team-fleming.csv
	elif [[ $file == *.java ]];
        then
                javac "$file"
		fname=$(echo "$file" | cut -d\. -f1)
		java "$fname" >> ../team-fleming.csv
	fi
done