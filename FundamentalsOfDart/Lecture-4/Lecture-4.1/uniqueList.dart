import 'dart:io';

void main() {
  print("Enter the number of names you want to enter:");
  int n = int.parse(stdin.readLineSync()!);
  List<String> names = [];

  for (int i = 0; i < n; i++) {
    print("Enter the name ${i + 1}:");
    String name = stdin.readLineSync()!;
    names.add(name);
  }

  List<String> uniqueNames = getUniqueNames(names);

  print("Unique Names are:");
  for (int i = 0; i < uniqueNames.length; i++) {
    print(uniqueNames[i]);
  }
}

List<String> getUniqueNames(List<String> names) {
  List<String> uniqueNames = [];

  for (int i = 0; i < names.length; i++) {
    int j;
    for (j = 0; j < uniqueNames.length; j++) {
      if (names[i] == uniqueNames[j]) {
        break;
      }
    }
    if (j == uniqueNames.length) {
      uniqueNames.add(names[i]);
    }
  }

  return uniqueNames;
}
