read -p "start:" start
read -p "x: " x
read -p "max: " max
index=1
n=1
odd_square_count=0
echo "odd^2:"
while :
do
    square=$((n * n))
    if (( index >= start && index % 2 == 1 )); then
        if (( x % square == 0 )); then
            echo "$square"
        fi
        ((odd_square_count++))
    fi

    if (( square > max )); then
        break
    fi

    ((n++))
    ((index++))
done

count=0
echo "Consecutive square numbers: "
for (( i=1; i*i + (i+1)*(i+1) <= max_val; i++ ))
do
    sum=$((i*i + (i+1)*(i+1)))
    echo "$sum"
    ((count++))
done

echo "Eligible: $count"
