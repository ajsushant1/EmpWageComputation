#!/bin/bash -x

echo "/********************* WELCOME TO EMPLOYEE WAGE COMPUTATION *********************/"

# CONSTANTS
IS_FULLTIME=2
EMP_WAGE_RATE_PER_HR=20

# GENERATING RANDOM VALUE
randomCheck=$((RANDOM%3))

# CHECKING CONDITION AND GETTING EMPLOYEE HOURS
if [ $IS_FULLTIME -eq $randomCheck ]
then
	echo "Employee is Present"
	employeeHrs=8
else
	echo "Employee is Absent"
	employeeHrs=0
fi

# CALCULATING EMPLOYEE DAILY WAGE
employeeDailyWage=$(($employeeHrs*$EMP_WAGE_RATE_PER_HR))
