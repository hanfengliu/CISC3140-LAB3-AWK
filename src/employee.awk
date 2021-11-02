BEGIN {
	# set comma to be the delimiter
	FS = ",";
	
	# initialize the variable to 0
	numOfMal = 0;
	numOfFem = 0;
	numOfJoinBef2000 = 0;
	numOfJoinBetw = 0;
	numOfJoinAft2010 = 0;
	averageAge = 0;
	averageSalary = 0;
	numOfEmp = 0;
	
	# heading
	printf "%-14s %-14s %-10s %-20s %-10s %-10s\n", "First", "Last", "Gender", "Year Of Joining", "Age", "Salary";
}
{
	# ingore the first line
	if(NR != 1)
	{
		# calculate the number of employee, gender, year of joining, total age and total salary
		numOfEmp++;
		if($6 == "M")
			numOfMal++;
		else
			numOfFem++;

		if($18 < 2000)
			numOfJoinBef2000++;
		else if($18 > 2010)
			numOfJoinAft2010++;
		else
			numOfJoinBetw++;

		averageAge = averageAge + $25;
		averageSalary = averageSalary + $26;

		# print the data of each person
		printf "%-14s %-14s %-10s %-20s %-10s %-10s\n", $3 ,$5 ,$6 ,$18 ,$25 ,$26;
	}
}
END {
	# calculate the average year of joining and salary
	averageAge=averageAge/numOfEmp;
	averageSalary=averageSalary/numOfEmp;
	
	# print the summary of the data
	printf "\nThere are %s employees\n", numOfEmp;
	printf "There are %s males and %s females\n", numOfMal, numOfFem;
	printf "%s people join before 2000\n", numOfJoinBef2000;
	printf "%s people join between 2000 and 2010\n", numOfJoinBetw;
	printf "%s people join after 2010\n", numOfJoinAft2010;
	printf "The average years of people working at the company are %s\n", averageAge;
	printf "The average salary are $%s\n", averageSalary;
}
