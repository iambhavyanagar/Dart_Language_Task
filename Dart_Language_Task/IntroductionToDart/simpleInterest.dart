// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100

import 'dart:io';

void main() {
  print("🌟 Welcome to the Simple Interest Calculator! 🚀");
  print("Let's calculate your simple interest! 💰💡");

  stdout.write("💲 Enter principal amount (in rupees): ");
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write("⏰ Enter time period (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  stdout.write("📈 Enter rate of interest (in percentage): ");
  double rate = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * time * rate) / 100;

  print("\n🎉 Calculating... 🎉");
  sleep(Duration(seconds: 1));

  print("\n🌟 Simple Interest: $simpleInterest rupees 🌟");

  print("\n🌈 Thank you for using the Simple Interest Calculator! 🌟");
  print("Happy saving and investing! 💰✨");
}
