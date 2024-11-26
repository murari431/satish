#!/bin/bash

# Prompt the user to enter two numbers
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

# Check if the second number is zero
if [ "$num2" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
    exit 1
fi

# Perform the division
result=$(echo "scale=2; $num1 / $num2" | bc)

# Display the result
echo "The result of $num1 divided by $num2 is: $result"
