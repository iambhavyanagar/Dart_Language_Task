import 'dart:io';

void main() {
  List<String> states = [];

  print("Enter the Indian states (type 'done' to finish):");

  while (true) 
  {
    String? input = stdin.readLineSync();
    if (input == null) {
      print("Error reading input.");
      break;
    }

    if (input.toLowerCase() == 'done') 
    {
      break;
    }

    states.add(input);
    print("State added.");
  }

  print("\nIndian states:");
  for (String state in states) 
  {
    print(state);
  }
}
