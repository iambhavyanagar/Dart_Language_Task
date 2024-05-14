// Write a program to find quotient and remainder of two integers.
import 'dart:io';

void main() {
  print("🌟 Welcome to the Quotient and Remainder Calculator! 🚀");
  print("Let's calculate the quotient and remainder of two integers! ➗🔢");

  stdout.write("➡️ Enter the first integer: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("➡️ Enter the second integer: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int quotient = num1 ~/ num2;
  int remainder = num1 % num2;

  print("\n🎉 Calculating... 🎉");
  sleep(Duration(seconds: 1));

  print("\n🌟 Quotient of $num1 ÷ $num2 is: $quotient");
  print("🌟 Remainder of $num1 ÷ $num2 is: $remainder");

  print("\n🌈 Thank you for using the Quotient and Remainder Calculator! 🌟");
  print("Happy calculating! ➗🔢✨");
}
