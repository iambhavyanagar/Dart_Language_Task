import 'dart:io';

void main() {
  
  print("🔢 Welcome to the Even or Odd Checker! 🚀");


  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  
  if (number % 2 == 0) {
    print(" The number $number is even.");
  } else {
    print(" The number $number is odd.");
  }

}
