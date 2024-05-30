import 'dart:io';

void main() {
  // Create a list to store the elements
  List<String> elements = [];

  // Prompt user to enter the number of elements
  stdout.write('Enter the number of elements: ');
  int numElements = int.parse(stdin.readLineSync()!);

  // Loop to gather elements from the user
  for (int i = 0; i < numElements; i++) {
    stdout.write('Enter element ${i + 1}: ');
    String? element = stdin.readLineSync();
    if (element != null && element.isNotEmpty) {
      elements.add(element);
    }
  }

  // Create a set to store unique elements
  Set<String> uniqueElements = elements.toSet();

  // Print the unique elements
  print('\nUnique elements:');
  for (String element in uniqueElements) {
    print(element);
  }
}
