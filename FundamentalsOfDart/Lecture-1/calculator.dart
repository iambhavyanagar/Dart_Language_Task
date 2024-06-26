import 'dart:io';

void main() {
  
  print("Welcome to the Dart Calculator!");

  
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);


  print("Choose an operation (+, -, *, /): ");
  String operation = stdin.readLineSync()!;

 
  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero is not allowed!");
        return;
      }
      break;
    default:
      print(" Error: Invalid operation!");
      return;
  }

  print("The result of $num1 $operation $num2 = $result");

  
}
