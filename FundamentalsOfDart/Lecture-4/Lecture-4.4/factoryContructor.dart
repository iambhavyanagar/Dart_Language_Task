void main() {
  List<Student> students = [];
  students.add(Student.withData(1, "Rahul", "BCA"));
  students.add(Student.withData(2, "Rohan", "BBA"));
  students.add(Student.withData(3, "Raj", "BCA"));
  students.add(Student.withData(4, "Bhavya", "BBA"));
  students.add(Student.withData(5, "Yash", "BCA"));
  students.add(Student.withData(6, "Dhruv", "BBA"));
  students.add(Student.withData(7, "Harshjeet", "BCA"));
  students.add(Student.withData(8, "Dhruv", "BBA"));
  students.add(Student.withData(9, "Yash", "BCA"));
  students.add(Student.withData(10, "Rahul", "BBA"));
  students.add(Student.withData(11, "Rohan", "BCA"));
  students.add(Student.withData(12, "Raj", "BBA"));
  students.add(Student.withData(13, "Rahul", "BCA"));
  students.add(Student.withData(14, "Rohan", "BBA"));
  students.add(Student.withData(15, "Raj", "BCA"));
  students.add(Student.withData(16, "Bhavya", "BBA"));
  students.add(Student.withData(17, "Yash", "BCA"));
  students.add(Student.withData(18, "Dhruv", "BBA"));
  students.add(Student.withData(19, "Harshjeet", "BCA"));
  students.add(Student.withData(20, "Dhruv", "BBA"));
  students.add(Student.withData(21, "Yash", "BCA"));
  students.add(Student.withData(22, "Rahul", "BBA"));
  students.add(Student.withData(23, "Rohan", "BCA"));
  students.add(Student.withData(24, "Raj", "BBA"));
  students.add(Student.withData(25, "Dhruv", "BBA"));
  students.add(Student.withData(26, "Yash", "BCA"));
  students.add(Student.withData(27, "Rahul", "BBA"));
  students.add(Student.withData(28, "Rohan", "BCA"));
  students.add(Student.withData(29, "Raj", "BBA"));
  students.add(Student.withData(30, "Yashvi", "BBA"));


  for (int i = 0; i < students.length; i++) 
  {
    print("Roll No: ${students[i].rollNo}, Name: ${students[i].name}, Course: ${students[i].course}");
  }
}

class Student 
{
  int rollNo;
  String name;
  String course;

  
  factory Student.withData(int rollNo, String name, String course) 
  {
    return Student.internal(rollNo, name, course);
  }

  Student.internal(this.rollNo, this.name, this.course);
}
