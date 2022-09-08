#!/bin/bash

echo 'Enter a number'; read number

if [ $number -ge 0 ] 
then

case $number in
    0) echo "No students" ;;
    1) echo "1 student" ;;
    2 | 3 | 4) echo "$number students" ;;
    *) echo "A lot of students";;
esac

else
    echo "Error"
fi