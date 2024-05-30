import 'dart:io';

void main() {
  List<int> input = [];
  List<String> output = [];

  print("Enter the elements of the list (separated by spaces):");
  String  inputString = stdin.readLineSync()!;
  List<String> inputList = inputString.split(" ");

  for (int i = 0; i < inputList.length; i++) 
  {
    input.add(int.parse(inputList[i]));
  }

  for (int i = 0; i < input.length; i++) 
  {
    output.add(input[i].toString() + " hello");
  }

  print(output);
}
