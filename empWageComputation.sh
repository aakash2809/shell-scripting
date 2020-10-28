#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
