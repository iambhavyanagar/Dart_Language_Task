import 'dart:io';

void main() 
{
  print("Welcome to the Multiplication Calculator");
  print("Let's multiply the numbers.");

  stdout.write("Enter the first number: ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  int multiplication = firstNumber * secondNumber;

  print("The multiplication of $firstNumber and $secondNumber is: $multiplication");
}
