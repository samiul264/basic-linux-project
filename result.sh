#! /bin/bash

pass=0
fail=0

read -p "Enter number of students: " n

for ((i=1; i<=n; i++))
do
    echo "Student $i"

    read -p "Enter Student ID: " id
    read -p "Enter marks of Subject 1: " m1
    read -p "Enter marks of Subject 2: " m2
    read -p "Enter marks of Subject 3: " m3

    total=$((m1 + m2 + m3))
    percentage=$((total * 100 / 300))

    # Grade calculation
    if [ $percentage -ge 80 ]; then
        grade="A+"
        pass=$((pass + 1))
    elif [ $percentage -ge 70 ]; then
        grade="A"
        pass=$((pass + 1))
    elif [ $percentage -ge 60 ]; then
        grade="B"
        pass=$((pass + 1))
    elif [ $percentage -ge 50 ]; then
        grade="C"
        pass=$((pass + 1))
    elif [ $percentage -ge 40 ]; then
        grade="D"
        pass=$((pass + 1))
    else
        grade="F"
        fail=$((fail + 1))
    fi

    echo "Student ID: $id"
    echo "Total Marks: $total"
    echo "Percentage: $percentage%"
    echo "Grade: $grade"
done

echo "Final Summary"
echo "Total Students: $n"
echo "Passed: $pass"
echo "Failed: $fail"
