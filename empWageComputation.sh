#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
wagePerHour=20
workingDayPerMonth=20
workingHourPerMonth=100
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
totalWorkingDays=0
totalWorkingHours=0
#declaration of array
declare -a dayWiseWageStorage
#declaration of dictionary
declare -i dailyWageStorage
#TO CHECK EMPLOYEE IS PART TIME OR FULL TIME
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME_HOUR;;
                1) workDonePerDay=$FULL_TIME_HOUR;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
#TO CALCULATE EMPLOYEE MONTHLY WAGE
while [[ $totalWorkingDays -lt $workingDayPerMonth && $totalWorkingHours -lt $workingHourPerMonth ]]
do
        ((totalWorkingDays++));
	workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) )
	totalWorkingHours=$((totalWorkingHours+workDonePerDay))
	dailyWage=$(( wagePerHour*workDonePerDay ))
	monthlyWage=$(( monthlyWage + dailyWage ))
	dayWiseWageStorage[((totalWorkingDays))]=$dailyWage
	dailyWageStorage[((totalWorkingDays))]=$dailyWage
done
echo "employee monthly wage - " $monthlyWage
echo "wages per day in array : " ${dayWiseWageStorage[@]}
echo "wages per day in dictionary : " ${dailyWageStorage[@]}
echo "days in dictionary : " ${!dailyWageStorage[@]}
