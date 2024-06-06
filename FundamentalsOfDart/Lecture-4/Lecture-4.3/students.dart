import 'dart:io';

class Student {
  int stu_id;
  String stu_name;
  int stu_age;
  int stu_std;
  int stu_mobile;

  Student(this.stu_id, this.stu_name, this.stu_age, this.stu_std, this.stu_mobile);
}

void main() {
  List<Student> students = [];
  int choice;

  do {
    print("Press 1 to get StdVise Data");
    print("Press 2 to get IdVise Data");
    print("Press 3 to insert Student Data");
    print("Press 4 to edit the Student Details");
    print("Press 5 For Delete Any Student Data");
    print("Press 0 For Exit");
    stdout.write("Enter Your Choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter Student Standard: ");
        int std = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < students.length; i++) {
          print("Student Standard: ${students[i].stu_std}");
          if (students[i].stu_std == std) {
            print("Student Id: ${students[i].stu_id}");
            print("Student Name: ${students[i].stu_name}");
            print("Student Age: ${students[i].stu_age}");
            print("Student Mobile: ${students[i].stu_mobile}");
          }
        }
        break;

      case 2:
        stdout.write("Enter Student ID: ");
        int id = int.parse(stdin.readLineSync()!);
        for(int i = 0; i < students.length; i++)
        {
          print("Student ID: ${students[i].stu_id}");
          if(students[i].stu_id == id)
          {
            print("Student Name: ${students[i].stu_name}");
            print("Student Age: ${students[i].stu_age}");
            print("Student Standard: ${students[i].stu_std}");
            print("Student Mobile: ${students[i].stu_mobile}");
          }
        }
        break;

      case 3:
        stdout.write("Enter Student Id: ");
        int stu_id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Name: ");
        String stu_name = stdin.readLineSync()!;
        stdout.write("Enter Student Age: ");
        int stu_age = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Standard: ");
        int stu_std = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Mobile Number: ");
        int stu_mobile = int.parse(stdin.readLineSync()!);
        students.add(Student(stu_id, stu_name, stu_age, stu_std, stu_mobile));
        print("Student Add Successfully");
        break;

      case 4:
        stdout.write("Enter Student Id: ");
        int edit_id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Name:- ");
        String edit_name = stdin.readLineSync()!;
        stdout.write("Enter Student Age:- ");
        int edit_age = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Standard ");
        int edit_std = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Student Mobile Number ");
        int edit_mobile = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < students.length; i++) {
          if (students[i].stu_id == edit_id) {
            students[i].stu_name = edit_name;
            students[i].stu_age = edit_age;
            students[i].stu_std = edit_std;
            students[i].stu_mobile = edit_mobile;
          }
        }
        break;

      case 5:
        stdout.write("Enter Student Id: ");
        int del_id = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < students.length; i++) {
          if (students[i].stu_id == del_id) {
            students.removeAt(i);
          }
        }
        break;

      case 0:
        print("Exiting program...");
        break;

      default:
        print("Invalid choice. Please try again.");
        break;
    }
  } while (choice != 0);
}
