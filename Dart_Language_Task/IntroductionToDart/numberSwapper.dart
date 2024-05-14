// Write a program to swap two numbers.

import 'dart:io';

void main() {
  print("🌟 Welcome to the Number Swapper! 🚀");
  print("Let's swap the values of two numbers! 🔄🔢");

  stdout.write("➡️ Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("➡️ Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double temp = num1;
  num1 = num2;
  num2 = temp;

  print("\n🎉 Swapping... 🎉");
  sleep(Duration(seconds: 1));

  print("\n🌟 After swapping, the first number is: $num1");
  print("🌟 After swapping, the second number is: $num2");

  print("\n🌈 Thank you for using the Number Swapper! 🌟");
  print("Happy swapping! 🔄🔢✨");
}
