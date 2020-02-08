#!/bin/bash -x

echo "/********************* WELCOME TO EMPLOYEE WAGE COMPUTATION *********************/"

# CONSTANTS
IS_PARTTIME=1
IS_FULLTIME=2
EMP_WAGE_RATE_PER_HR=20
NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

# VARIABLES
totalEmpHrs=0
totalEmpSalary=0
totalWorkingDays=0

# LOOP FOR CALCULATING WAGES FOR MONTH AND TOTAL EMPLOYEE SALARY
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
# GENERATING RANDOM VALUE
	randomCheck=$((RANDOM%3))

# CHECKING CASE AND GETTING EMPLOYEE HOURS
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

# CALCULATING EMPLOYEE TOTAL WORING HOURS
totalEmpHrs=$(($totalEmpHrs+$employeeHrs))
done

# CALCULATING EMPLOYEE TOTAL SALARY
totalEmpSalary=$(($totalEmpHrs*$EMP_WAGE_RATE_PER_HR))

