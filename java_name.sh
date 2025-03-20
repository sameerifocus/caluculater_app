#!/bin/bash

# Function to add two numbers
add() {
  result=$(($1 + $2))
  echo "Result: $result"
}

# Function to subtract two numbers
subtract() {
  result=$(($1 - $2))
  echo "Result: $result"
}

# Function to multiply two numbers
multiply() {
  result=$(($1 * $2))
  echo "Result: $result"
}

# Function to divide two numbers
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
  else
    result=$(($1 / $2))
    echo "Result: $result"
  fi
}

# Display menu to the user
echo "Simple Shell Calculator"
echo "========================"
echo "Choose an operation:"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Exit"
echo "========================"
read -p "Enter your choice: " choice

# Loop to keep the calculator running until user chooses to exit
while true; do
  case $choice in
    1)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      add $num1 $num2
      ;;
    2)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      subtract $num1 $num2
      ;;
    3)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      multiply $num1 $num2
      ;;
    4)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      divide $num1 $num2
      ;;
    5)
      echo "Exiting the calculator."
      exit 0
      ;;
    *)
      echo "Invalid choice, please try again."
      ;;
  esac
  
  # Display the menu again after performing an operation
  echo "========================"
  echo "Choose another operation or exit:"
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Exit"
  echo "========================"
  read -p "Enter your choice: " choice
done
