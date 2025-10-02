// Step 1: Interface
// একটি interface বানাও Report নামে।
// এতে একটি method থাকবে:

import 'dart:io';

abstract class Report {
  void printReport();
}

// Step 2: Base Class
// Student class বানাও।
// Private properties:
// _name (String)
// _marks (double)
// Constructor দিয়ে name এবং marks set করবে।
// Getter এবং Setter ব্যবহার করবে।

class Student {
  String? _name;
  double? _marks;

  Student(this._name, this._marks);

  String getName() {
    return _name!;
  }

  double getMarks() {
    return _marks!;
  }

  void setName(String name) => _name = name;
  void setMarks(double marks) => _marks = marks;
}

// Step 3: Derived Class
// HighSchoolStudent class বানাও।
// Student class থেকে inherit করবে।
// Extra property: gradeLevel (int)
// Interface implement করবে (Report)
// printReport() method:
// Marks অনুযায়ী grade নির্ধারণ করবে:
// ≥ 80 → "A"
// ≥ 60 → "B"
// < 60 → "C"
// Student name, marks, grade level, grade print করবে

class HighSchoolStudent extends Student implements Report {
  int? gradeLevel;

  HighSchoolStudent(String name, double marks, this.gradeLevel)
    : super(name, marks);

  @override
  void printReport() {
    print("Name is $_name \nMark is $_marks \nGrade Level is $gradeLevel");

    if (_marks! >= 80) {
      print("He got A");
    } else if (_marks! >= 60) {
      print("He got B");
    } else {
      print("He got C");
    }
  }
}

// Step 4: User Input
// Main function-এ user input নাও:
// কতজন student add করতে চাও
// প্রতিটি student-এর name, marks, grade level

void main() {
  while (true) {
    print("Enter Student's Name");
    String a = stdin.readLineSync()!;
    if (a.toLowerCase() == "stop") {
      break;
    }

    print("Enter Student's Marks");
    double b = double.parse(stdin.readLineSync()!);

    print("Enter Student's Grade Level");
    int c = int.parse(stdin.readLineSync()!);

    HighSchoolStudent highSchoolStudent = HighSchoolStudent(a, b, c);
    highSchoolStudent.printReport();
  }
}
