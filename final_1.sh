#!/bin/bash
#Password Required
password="w22"
attempts="3"
while [ $attempts -gt 0 ]; do
	echo "Welcome Please Enter your Password"
	echo "input_password : "
    read -r input_password
    if [ "$input_password" == "$password" ]; then
        echo "granted"
        break
    else
        attempts=$((attempts - 1))
        if [ $attempts == 1 ]; then
            echo "Incorrect Password Only 1 Attempts left"
        elif [ $attempts == 0 ]; then
            echo "Incorrect No attempt exiting..."
            exit 1
        fi
    fi
done
#Menu selected
echo "Execute Task by enter following alphabet listed below"

while true; do
echo "Enter H or h to Task 1 hexagonal numbers"
echo "Enter S or s to Task 2 square numbers"
echo "Enter Q or q to Task 3 quadratic sequences"
echo "Enter X or x to Exit"
read -p "Your selected option is: " option

    case $option in
        H|h)
            echo "executed Task 1 - Hexagonal numbers"
            #intro of hexagonal number
            echo "Hexagonal Numbers required user to inout range of number to calculating"
            echo "Enter start range of numbers here : "
            read a
            echo "Enter end of range of numbers here : "
            read b
            if [[ $a -gt 0 && $b -gt 0 && $a -le $b ]]; then
                echo "you entered the range : [$a,$b]"
            else
                echo "Invalid range pleaser enter valid positive integer there a <= b"
                exit 1
            fi
            echo "Calculate Hexagonal number in range :[$a,$b]"
            #set of var to cal
            odd=0
            even=0
            oddsum=0
            evensum=0
            n=1 #set n to while loop
            while true; do
                hex=$(( n * ( 2 * n - 1 )))
                if (( hex >= b )); then
                    break
                fi
                if (( hex >= a )); then
                    echo "$hex"
                fi  
                if (( hex % 2 == 0 )); then
                    even=$((even + 1 ))
                    evensum=$((evensum + hex ))
                else
                    odd=$((odd + 1 ))
                    oddsum=$((oddsum + hex ))
                fi
            ((n++))
            done
            echo
    
            echo "Total number of odd hexagonal number is $odd"
            echo "Total number of even hexagonal number is $even"
            echo "sum of all odd hexagonal number is $oddsum"
            echo "sum of all even hexagonal number is $evensum"
            read -p "Would u like to execute another tasks enter Y or C to exit : " ans
            case $ans in
            Y|y)
                echo "go to menu"
                ;;
            X|x)
                echo "exiting Program"
                exit 0
                ;;
            *)
                echo "Enter invalid input try again"
                ;;
            esac
            ;;
        S|s)
            echo "Executing Program 2 Square numbers"
            echo "This Program calculate square numbers in odd position"
            #set var
            pos=1
            countcon=0
            num=0
            read -p "Please input the sequence of square numbes that u want to start: " sequence
            read -p "Please determined the amount of number that you want to calculated : " amount
            read -p "Please determined positive integer x to calculate factor : " x
            #validate input
            if [[ $sequence -gt 0 && $amount -gt 0 && $x -gt 0 ]]
            then
                echo "your input sequence = $sequence, Amount = $amount and X =$x"
            else
                echo "You enter invalid input, Please enter again"
                exit 1
            fi
            while [[ $pos -lt $amount ]]; do
            #start sequence
            squarenumber=$((num * num))
            if [[ $pos -ge $sequence && $((num % 2 == 1)) && $amount -ne 0 ]]
                then
                echo "square number : $squarenumber sequence : $sequence"
                ((sequece++))
                ((amount-1))
            else
            ((pos++))
            fi
            #find the factor that each square number are factor of x or not
            factor=$((squarenumber % x))
            if [[ $factor == 0 ]]; then
                echo "$squarenumber is factor of $x"
            else
                echo "$squarenumber is not factor of $x"
            fi
            #find sum of consecutive square number and count how many number
            sumcon=$(((num * num) + ((num+1)*(num+1))))
            echo "sum of consecutive square number in this position $pos is $sumcon"
            ((countcon++))
            if [[ $amount == 0 ]]
            then
                break
            else
            ((num++))
            fi
            done
            echo
            echo "amount of sum of consecutive number is : $countcon"
            read -p "Would u like to execute another tasks enter Y or X to exit : " ans
            case $ans in
            Y|y)
                echo "go to menu"
                ;;
            X|x)
                echo "exiting Program"
                exit 0
                ;;
            *)
                echo "Enter invalid input try again"
                ;;
            esac
            ;;
        Q|q)
            echo "Selected Program 3 Quadratic sequences"
            ;;
        X|x)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Enter invalid value please enter input again to executing any task"
            ;;
    esac
done
