// Write a program to print a square of a number using user input.

import 'dart:io';

void main() {
  print("🌟 Welcome to the Square Calculator! 🚀");
  print("Let's calculate the square of a number! 🔲💡");

  stdout.write("💡 Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  double square = number * number;

  print("\n🎉 Calculating... 🎉");
  sleep(Duration(seconds: 1));

  print("\n🌟 The square of $number is: $square 🔲");

  print("\n🌈 Thank you for using the Square Calculator! 🌟");
  print("Happy calculating! 💡✨");
}
