#!/bin/sh

# Prompt the user for the number of elements to sort
echo "Enter the number of elements to sort: "
read num_elements

# Prompt the user for the numbers to sort
echo "Enter $num_elements numbers, separated by spaces: "
read -a numbers

# Bubble sort algorithm to sort numbers in ascending order
for i in $(seq 0 $(($num_elements - 1))); do
  for j in $(seq 0 $(($num_elements - $i - 2))); do
    if [ ${numbers[$j]} -gt ${numbers[$(($j + 1))]} ]; then
      temp=${numbers[$j]}
      numbers[$j]=${numbers[$(($j + 1))]}
      numbers[$(($j + 1))]=$temp
    fi
  done
done

# Print the original and sorted numbers
echo "Original numbers: ${numbers[@]}"
echo "Sorted numbers: $(echo ${numbers[@]} | tr ' ' '\n' | sort -n | tr '\n' ' ')"
