#!/bin/bash -x

echo "/********************* WELCOME TO EMPLOYEE WAGE COMPUTATION *********************/"

# CONSTANTS
IS_PARTTIME=1
IS_FULLTIME=2
EMP_WAGE_RATE_PER_HR=20

# GENERATING RANDOM VALUE
randomCheck=$((RANDOM%3))

# CHECKING CONDITION AND GETTING EMPLOYEE HOURS
case $randomCheck in
		$IS_FULLTIME)
				employeeHrs=8
					;;

		$IS_PARTTIME)
				employeeHrs=4
					;;

		*)
				employeeHrs=0
					;;
esac

# CALCULATING EMPLOYEE DAILY WAGE
employeeDailyWage=$(($employeeHrs*$EMP_WAGE_RATE_PER_HR))
