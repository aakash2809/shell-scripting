#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
wagePerHour=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
#TO CHECK EMPLOYEE IS PART TIME OR FULL TIME
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME_HOUR;;
                1) workDonePerDay=$FULL_TIME_HOUR;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
#TO CALCULATE EMPLOYEE DAILY WAGE
workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) )
calculateDailyWage=$(( wagePerHour*workDonePerDay ))
echo "employee daily wage - " $calculateDailyWage
