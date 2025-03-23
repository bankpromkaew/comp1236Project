#intro of programe 1 after selected from menu
echo "Enter start range here \(a\) : "
read a
echo "Next step"
echo "Enter the end of the range \(b\): "
read b
if [[ $a -gt 0 && $b -gt 0 && $a -le $b ]]; then 
	echo "You entered the range : [$a,$b]"
else
	echo "Invalid range. Please enter valid positive integer there a <= b"
	exit 1
fi
echo "Calculate Hexagonal In Range: [$a,$b]"
#set of var to use in this program
odd=0	
evens=0
oddsum=0
evensum=0
n=1 #set n to go in to while loop 
while true; do
	hex=$(( n * ( 2 * n - 1 )))
	if (( hex >= b )); then
            break
        fi
	if (( hex >= a )); then
            echo "$hex" them
	fi
	if (( hex % 2 == 0 )); then
            even=$(( even + 1 ))
            evensum=$(( evensum + hex ))
        else
            odd=$(( odd +1 ))
            oddsum=$(( oddsum + hex ))
        fi
        ((n++))
done
echo 
# Display Programe re=sult 
echo "Total number of odd hexagonal number is $odd"
echo "Total number of even hexagonal number is $even"
echo "sum of all odd hexagonal number is $oddsum"
echo "sum of all even hexagonal number is $evensum"
;;
