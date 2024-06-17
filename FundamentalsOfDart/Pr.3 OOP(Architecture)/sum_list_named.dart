import 'dart:io';

void main() {
  print("Enter the number of elements:- ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  for (int i = 0; i < n; i++) {
    print("Enter element ${i + 1}:- ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  print("Sum of all elements is:- ${sumOfListElements}");
}

int sumOfListElements({required List<int> list}) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  return sum;
}
