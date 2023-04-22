#!/bin/sh

# Check that exactly three arguments were provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 operand operator operand"
  exit 1
fi

# Extract the arguments
operand1="$1"
operator="$2"
operand2="$3"

# Determine the operation to perform based on the operator
case "$operator" in
  +) operation="plus"
     result=$(($operand1 + $operand2))
     ;;
  -) operation="minus"
     result=$(($operand1 - $operand2))
     ;;
  /) operation="divided by"
     result=$(($operand1 / $operand2))
     ;;
  *) operation="multiplied by"
     result=$(($operand1 * $operand2))
     ;;
  esac

# Output the calculation in words
echo "$operand1 $operation $operand2 equals $result"
