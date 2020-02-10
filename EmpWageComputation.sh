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

# FUNCTION TO GET EMPLOYEE WORKING HOURS
function getWorkingHours(){
	case $1 in
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
	echo $employeeHrs
}

#FUNCTION TO CALCULATE DAILY WAGE
function calcDailyWage(){
	local workHrs=$1
	dailyWage=$((workHrs*$EMP_WAGE_RATE_PER_HR))
	echo $dailyWage
}

# LOOP TO CALCULATING TOTAL EMPLOYEE WORKING HOURS AND SALARY FOR MONTH
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$workHours))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"

	totalEmpSalary=$(($totalEmpSalary+${empDailyWage[$totalWorkingDays]}))
done

#PRINTING ARRAY OF DAILY WAGE
echo "Daily Wage :"${empDailyWage[@]}
