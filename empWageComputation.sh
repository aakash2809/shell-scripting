#!/bin/bash -x

wagePerHour=20
fullTimeHour=8
partTimeHour=4

echo "Welcome to Employee Wage Computation"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#TO CALCULATE FULL DAY EMPLOYEE DAILY WAGE
calculateDailyWage=$(( wagePerHour*fullTimeHour))

echo "full time employee daily wage - " $calculateDailyWage

#TO CALCULATE PART TIME EMPLOYEE DAILY WAGE
calculateDailyWage=$(( wagePerHour*partTimeHour))
echo "part time employee daily wage - " $calculateDailyWage
