#!/bin/bash -x

wagePerHour=20
fullDayHour=8

echo "Welcome to Employee Wage Computation"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#TO CALCULATE EMPLOYEE DAILY WAGE
calculateDailyWage=$(( wagePerHour*fullDayHour))
echo "employee daily wage - " $calculateDailyWage
