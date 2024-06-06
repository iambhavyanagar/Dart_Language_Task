import 'dart:io';

class Distance {
  int feet;
  int inch;
  Distance(this.feet, this.inch);
}

class DistanceConverter 
{
  void convertDistance(Distance distance) 
  {
    int totalInch = distance.feet * 12 + distance.inch;
    int newFeet = totalInch ~/ 12;
    int newInch = totalInch % 12;
    print("The converted distance is: $newFeet feet and $newInch inch");
  }
}

void main() {
  print("Enter the distance in feet and inches");
  print("Enter feet: ");
  int feet = int.parse(stdin.readLineSync()!);
  print("Enter inches: ");
  int inch = int.parse(stdin.readLineSync()!);

  Distance distance = Distance(feet, inch);
  DistanceConverter converter = DistanceConverter();
  converter.convertDistance(distance);
}
