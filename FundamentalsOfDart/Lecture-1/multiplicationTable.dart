import 'dart:io';

void main() 
{
  int i = 0;
  print("Welcome to the Multiplication Calculator");
  print("Let's multiply the numbers.");

  stdout.write("Enter the first number: ");
  int Number = int.parse(stdin.readLineSync()!);

  stdout.write("Multiplication table are under :- ");

  for(i = 1; i < 11; i++)
  {
    int result = Number * i;

    print("$Number * $i = $result");
  }
}
