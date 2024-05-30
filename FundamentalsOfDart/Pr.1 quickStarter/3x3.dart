import 'dart:io';

void main() {
  List<List<int>> list = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print("Enter your choice");
  print("1) Sum of all elements");
  print("2) Sum of specific Row");
  print("3) Sum of specific Column");
  print("4) Sum of diagonal elements");
  print("5) Sum of anti-diagonal elements");
  print("6) Exit");

  // String? input = stdin.readLineSync();
  // int? choice = int.tryParse(input ?? "");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      int sum = 0;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          sum = sum + list[i][j];
        }
      }
      print("Sum of all elements: $sum");
      break;

    case 2:
      print("Enter row number");
      int row = int.tryParse(stdin.readLineSync()!) ?? -1;
      if (row >= 0 && row < 3) {
        int sum1 = 0;
        for (int i = 0; i < 3; i++) {
          sum1 = sum1 + list[row][i];
        }
        print("Sum of Row $row: $sum1");
      } else {
        print("Invalid row number!");
      }
      break;

    case 3:
      print("Enter column number");
      int column = int.tryParse(stdin.readLineSync()!) ?? -1;
      if (column >= 0 && column < 3) {
        int sum2 = 0;
        for (int i = 0; i < 3; i++) {
          sum2 = sum2 + list[i][column];
        }
        print("Sum of Column $column: $sum2");
      } else {
        print("Invalid column number!");
      }
      break;

    case 4:
      int sum3 = 0;
      for (int i = 0; i < 3; i++) {
        sum3 = sum3 + list[i][i];
      }
      print("Sum of diagonal elements: $sum3");
      break;

    case 5:
      int sum4 = 0;
      for (int i = 0; i < 3; i++) {
        sum4 = sum4 + list[i][2 - i];
      }
      print("Sum of anti-diagonal elements: $sum4");
      break;

    case 6:
      print("Exiting the program. Goodbye!");
      exit(0);

    default:
      print("Invalid choice! Please enter a number from 1 to 6.");
      break;
  }
}
