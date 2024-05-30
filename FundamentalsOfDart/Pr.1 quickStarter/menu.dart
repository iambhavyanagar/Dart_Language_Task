// write a program to dart insert delete update and view with switch case statements in list in dart without function from user input

import 'dart:io';

void main()
{
  List<int> numbers = [];
  int choice = 0;
  int number = 0;
  int index = 0;
  while(true)
  {
    print("1. Insert");
    print("2. Delete");
    print("3. Update");
    print("4. View");
    print("5. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    switch(choice)
    {
      case 1:
        print("Enter the number:-");
        number = int.parse(stdin.readLineSync()!);
        numbers.add(number);
        print(number);
        break;

      case 2:
        print("Enter the index to delete:-");
        index = int.parse(stdin.readLineSync()!);
        numbers.removeAt(index);
        print(numbers);
        break;
      
      case 3:
        print("Enter the index to update:-");
        index = int.parse(stdin.readLineSync()!);
        print("Enter the new number:-");
        number = int.parse(stdin.readLineSync()!);
        numbers[index] = number;
        print(numbers);
        break;
      
      case 4:
        print(numbers);
        break;
      
      case 5:
      exit(0);
      
      default:
      print("Invalid choice");
      break;
    }
  }
}