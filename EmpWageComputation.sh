#!/bin/bash -x

echo "/********************* WELCOME TO EMPLOYEE WAGE COMPUTATION *********************/"

# CONSTANT
IS_EMPLOYEE_PRESENT=1;

# GENERATING RANDOM VALUE
randomCheck=$((RANDOM%2))

# CHECKING CONDITION AND PRINTING RESULT
if [ $IS_EMPLOYEE_PRESENT -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

