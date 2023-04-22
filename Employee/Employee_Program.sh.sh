#!/bin/sh

# Initialize the serial ID counter
id=1

# Loop until the user enters "0"
while true; do
  # Prompt the user for an employee name
  echo "Enter an employee name (or 0 to quit): "
  read name
  
  # Check if the user entered "0"
  if [ "$name" = "0" ]; then
    break
  fi
  
  # Calculate the employee's serial ID and increment the counter
  serial_id=$id
  id=$((id + 1))
  
  # Store the ID and name in the employee.csv file
  echo "$serial_id;$name" >> employee.csv
done

# Print all employees from the employee.csv file
echo "Employee list:"
cat employee.csv
