#!/bin/bash

# ---------- Functions ----------

check_prime() {
    num=$1
    flag=0

    if [ $num -le 1 ]; then
        echo "Not Prime"
        return
    fi

    for ((i=2; i<=num/2; i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]; then
        echo "Prime Number"
    else
        echo "Not Prime"
    fi
}

check_leap() {
    year=$1
    if [ $((year % 400)) -eq 0 ] || [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 ]; then
        echo "Leap Year"
    else
        echo "Not a Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++))
    do
        sum=$((sum + i))
    done
    echo "Sum of series = $sum"
}

# ---------- Main Program ----------

read -p "Enter a number/year: " num

while true
do
    echo "-------------------------"
    echo "1. Check Prime"
    echo "2. Check Leap Year"
    echo "3. Print Sum of Series (1 to n)"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) check_prime $num ;;
        2) check_leap $num ;;
        3) sum_series $num ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid choice" ;;
    esac
done
