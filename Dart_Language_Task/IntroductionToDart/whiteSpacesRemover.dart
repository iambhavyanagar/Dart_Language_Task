// Write a program in Dart to remove all whitespaces from String.

import 'dart:io';

void main() {
  print("🌟 Welcome to the Whitespace Remover! 🚀");
  print("Let's remove all whitespaces from a string! 🧼✨");

  stdout.write("➡️ Enter a string: ");
  String inputString = stdin.readLineSync()!;

  String stringWithoutWhitespaces = inputString.replaceAll(' ', '');

  print("\n🎉 Removing whitespaces... 🎉");
  sleep(Duration(seconds: 1));

  print("\n🌟 String without whitespaces: $stringWithoutWhitespaces");

  print("\n🌈 Thank you for using the Whitespace Remover! 🌟");
  print("Happy cleaning! 🧼✨");
}
