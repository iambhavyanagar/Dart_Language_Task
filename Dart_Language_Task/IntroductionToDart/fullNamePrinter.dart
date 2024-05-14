// Write a program to print full name of a from first name and last name using user input.

import 'dart:io';

void main() {
  print("🌟 Welcome to the Full Name Printer! 🚀");
  print("Let's print your full name! 📝💡");

  stdout.write("💡 Enter your first name: ");
  String firstName = stdin.readLineSync()!;

  stdout.write("💡 Enter your last name: ");
  String lastName = stdin.readLineSync()!;

  String fullName = "$firstName $lastName";

  print("\n🎉 Printing... 🎉");
  sleep(Duration(seconds: 1)); // Delay for dramatic effect

  print("\n🌟 Your full name is: $fullName");

  print("\n🌈 Thank you for using the Full Name Printer! 🌟");
  print("Happy printing! 📝✨");
}
