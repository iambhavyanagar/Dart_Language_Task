
import 'dart:io';

void main() 
{
  print("Welcome to the Addition Calculator");
  print("Let's add the numbers.");

  stdout.write("Enter the first number: ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the third Number: ");
  int thirdsecondNumber = int.parse(stdin.readLineSync()!);

  int cube = firstNumber * secondNumber * thirdsecondNumber;

  print("The numbers of cube is = $cube");
}
