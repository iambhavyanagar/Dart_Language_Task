import 'dart:io';

void main() {
  List<Map<String, dynamic>> employees = [];

  for (int i = 0; i < 3; i++) {
    Map<String, dynamic> employee = {};

    stdout.write('Enter the name of employee ${i + 1}: ');
    String? name = stdin.readLineSync();
    employee['name'] = name;

    stdout.write('Enter the age of employee ${i + 1}: ');
    int age = int.parse(stdin.readLineSync()!);
    employee['age'] = age;

    stdout.write('Enter the salary of employee ${i + 1}: ');
    double salary = double.parse(stdin.readLineSync()!);
    employee['salary'] = salary;

    employees.add(employee);
  }

  print('\nEmployee Information:');
  for (int i = 0; i < employees.length; i++) {
    Map<String, dynamic> employee = employees[i];
    print('Employee ${i + 1}:');
    print('Name: ${employee['name']}');
    print('Age: ${employee['age']}');
    print('Salary: ${employee['salary']}');
    print(''); 
  }
}
