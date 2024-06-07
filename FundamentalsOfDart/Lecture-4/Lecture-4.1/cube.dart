import 'dart:io';


int cubeOfNumber(int num) {
  return num * num * num;
}

void main() {
  print("Enter a number: ");
  
  
  int num = int.parse(stdin.readLineSync()!);
  
  
  int cube = cubeOfNumber(num);
  
  print("The cube of $num is $cube");
}
