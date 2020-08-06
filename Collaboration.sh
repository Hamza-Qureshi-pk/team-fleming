git clone https://github.com/HamzaQureshi21/team-fleming.git

cd team-fleming/scripts/


do

	if [[ $file == *.py ]];

	then

		python $file >> ../team-heisenberg.csv


	elif [[ $file == *.R ]];

	then

		Rscript $file >> ../team-heisenberg.csv

	elif [[ $file == *.c || $file == *.cpp ]];

	then

		g++ $file 

		./a.out >> ../team-heisenberg.csv

		rm a.out

	elif [[ $file == *.pl ]];

	then

		perl $file >> ../team-heisenberg.csv

	fi

done