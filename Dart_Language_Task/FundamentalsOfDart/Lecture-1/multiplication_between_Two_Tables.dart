import 'dart:io';

void main() {
  print(" Welcome to the Multiplication Tables Generator! ");
  print("Let's generate multiplication tables between two numbers! ");

  stdout.write(" Enter the first number (n1): ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write(" Enter the second number (n2): ");
  int n2 = int.parse(stdin.readLineSync()!);

  if (n1 > n2) {
    int temp = n1;
    n1 = n2;
    n2 = temp;
  }

  for (int i = n1; i <= n2; i++) {
    print("\n Multiplication Table for $i ");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }
}
