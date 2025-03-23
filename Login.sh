# Password validation section
password="w22"
attempts=3  # No need for quotes around numbers

while [ $attempts -gt 0 ]; do
    echo "Welcome! Please enter your password:"
    read -p "Input password: " input_password

    if [ "$input_password" == "$password" ]; then
        echo "Access granted"
        break
    else
        attempts=$((attempts - 1))

        if [ $attempts -eq 1 ]; then
            echo "Incorrect password. Only 1 attempt left."
        elif [ $attempts -eq 0 ]; then
            echo "Incorrect password. No attempts left. Exiting..."
            exit 1
        fi  # Properly close the if statement
    fi  # Close the main if statement
done  # Close the while loop correctly
