#!/bin/bash
# Password Required
password="w22"
attempts="3"
while [ $attempts -gt 0 ]; do
    echo "Welcome Please Enter your Password"
    read -p "Input Password: " input_password
    if [ "$input_password" == "$password" ]; then
        echo "Access Granted"
        break
    else
        attempts=$((attempts - 1))
        if [ $attempts == 1 ]; then
            echo "Incorrect Password. Only 1 Attempt Left."
        elif [ $attempts == 0 ]; then
            echo "Incorrect. No Attempts Left. Exiting..."
            exit 1
        fi
    fi
done

# Menu
echo "Please select an option:"
echo "Enter H or h for Task 1 (Hexagonal Numbers)"
echo "Enter S or s for Task 2 (Square Numbers)"
echo "Enter Q or q for Task 3 (Quadratic Sequences)"
echo "Enter X or x to Exit"

while true; do
    read -p "Your selected option is: " option
    case $option in
        H|h)/var/folders/nw/1rzl33l9169_y2m32wxpxrw40000gn/T/simulator_screenshot_79ADB0BE-4A92-46EA-A15F-513C30C93077.png
            echo "Task 1 Selected - Hexagonal Numbers"
            # Range Input
            read -p "Enter start of range: " a
            read -p "Enter end of range: " b
            if [[ $a -gt 0 && $b -gt 0 && $a -le $b ]]; then
                echo "Calculating Hexagonal Numbers in Range [$a, $b]..."
                odd=0
                even=0
                oddsum=0
                evensum=0
                for (( n=1; ;n++ )); do
                    hex=$(( n * (2 * n - 1) ))
                    if (( hex > b )); then
                        break
                    fi
                    if (( hex >= a )); then
                        echo "$hex"
                        if (( hex % 2 == 0 )); then
                            even=$((even + 1))
                            evensum=$((evensum + hex))
                        else
                            odd=$((odd + 1))
                            oddsum=$((oddsum + hex))
                        fi
                    fi
                done
                echo "Total Odd Hexagonal Numbers: $odd"
                echo "Total Even Hexagonal Numbers: $even"
                echo "Sum of Odd Hexagonal Numbers: $oddsum"
                echo "Sum of Even Hexagonal Numbers: $evensum"
            else
                echo "Invalid range. Please enter valid positive integers with a <= b."
                exit 1
            fi
            ;;
        S|s)
            echo "Task 2 - Square Numbers"
            ;;
        Q|q)
            echo "Task 3 - Quadratic Sequences"
            ;;
        X|x)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid option. Please enter a valid option."
            ;;
    esac
done
