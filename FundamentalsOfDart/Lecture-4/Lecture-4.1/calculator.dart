import 'dart:io';

// Function to perform addition
double add(double a, double b) {
  return a + b;
}

// Function to perform subtraction
double subtract(double a, double b) {
  return a - b;
}

// Function to perform multiplication
double multiply(double a, double b) {
  return a * b;
}

// Function to perform division
double divide(double a, double b) {
  if (b == 0) {
    print('Error: Division by zero');
    return double; // Return NaN to indicate an error
  }
  return a / b;
}

void main() {
  print('Simple Calculator');

  
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Choose an operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;

  double result;

  switch (operation) {
    case '+':
      result = add(num1, num2);
      break;
    case '-':
      result = subtract(num1, num2);
      break;
    case '*':
      result = multiply(num1, num2);
      break;
    case '/':
      result = divide(num1, num2);
      break;
    default:
      print('Invalid operation');
      return; 
  }

  
  print('Result: $result');
}
