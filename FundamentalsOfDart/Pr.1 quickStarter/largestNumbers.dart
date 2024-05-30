import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter the elements: ");
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largestNumber = numbers[0];
  for (int i = 1; i < numbers.length; i++) 
  {
    if (numbers[i] > largestNumber) 
    {
      largestNumber = numbers[i];
    }
  }

  print("The largest number is: $largestNumber");
}
