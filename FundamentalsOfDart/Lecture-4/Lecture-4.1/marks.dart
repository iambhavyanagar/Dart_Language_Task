

import 'dart:io';
void main() 
{
  print("Enter Your Marks");
  int marks = int.parse(stdin.readLineSync()!);
  String result = checkResult(marks);
  print("Your Result is $result");
}

String checkResult(int marks)
{
  if(marks >= 80)
  {
    return "A";
  }
  else if(marks >= 70)
  {
    return "B";
  }
  else if(marks >= 60)
  {
    return "C";
  }
  else if(marks >= 50)
  {
    return "D";
  }
  else  
  {
    return "F";
  }
}