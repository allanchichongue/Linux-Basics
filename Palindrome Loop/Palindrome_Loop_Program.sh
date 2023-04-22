#!/bin/sh

# Loop until the user enters a palindrome
while true; do
    # Ask the user for input
    echo "Enter a string:"
    read input

    # Reverse the input using 'rev'
    reversed=$(echo "$input" | rev)

    # Check if the reversed input is equal to the original input (i.e. if it's a palindrome)
    if [ "$reversed" = "$input" ]; then
        echo "Palindrome found: $input"
        break
    fi

    # Echo the reversed input
    echo "Reversed string: $reversed"
done
