import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter the elements: ");
  for (int i = 0; i < n; i++) 
  {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  print("Negative numbers found:");
  int index = 0;
  while (index < numbers.length) 
  {
    if (numbers[index] < 0) 
    {
      print(numbers[index]);
    }
    index++;
  }
}
