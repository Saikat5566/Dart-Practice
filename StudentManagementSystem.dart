abstract class Report{
  void printReport();
}

// Step 2: Base Class তৈরি করা
// একটি Student class তৈরি করো।
// Private properties যোগ করো (Encapsulation):
// _name (String)
// _marks (double)
// Constructor বানাও যা নাম ও marks set করবে।
// Getter এবং Setter যোগ করো যাতে private properties access করা যায়।

class Student{
  String? _name;
  double? _marks;

  Student(this._name, this._marks);

  String getName(){
    return _name!;
  }
  double getMarks(){
    return _marks!;
  }

  void setName(String name){
    this._name = name;
  }
  void setMarks(double marks){
    this._marks = marks;
  }
}

// HighSchoolStudent class বানাও।
// এটি Student class থেকে inherit করবে।
// Extra property: gradeLevel (int)
// Constructor বানাও যা name, marks, gradeLevel set করবে।
// Interface implement করো:
// Report interface implement করে printReport() method define করো।
// এই method-এর ভিতরে:
// Marks অনুযায়ী grade নির্ধারণ করবে (Operators & Conditions):
// ≥ 80 → "A"
// ≥ 60 → "B"
// < 60 → "C"
// Student info print করবে।

class HighSchoolStudent extends Student implements Report{
  int? gradeLevel;

  HighSchoolStudent(String name, double marks, this.gradeLevel): super(name, marks);

  void printReport(){

    print("Student Name is $_name \nMark is $_marks \nGrade Level $gradeLevel");

    if(_marks! >= 80){
      print("He got A");
    }
    else if(_marks! >= 70){
      print("He got B");
    }
    else if(_marks! < 60){
      print("He got C");
    }

    print("-----------------------------------------------------------------");

  }
}

// Step 4: Loop & Function তৈরি করা
// একটি function বানাও, যেমন: printAllReports()
// Input: List<HighSchoolStudent>
// Loop ব্যবহার করে সব student-এর report print করবে।
// প্রতিটি student-এর জন্য printReport() call করবে।

void printAllReports(List<HighSchoolStudent> information ){

  for (var info in information){
    info.printReport();
  }
}

// Step 5: Main Function
// Main function-এ objects create করো:
// 2-3টা HighSchoolStudent object বানাও।
// Student objects List-এ রাখো।
// printAllReports() function call করো।
// Polymorphism দেখানোর জন্য Report type use করে object call করতে পারো।

void main(){
  HighSchoolStudent highSchoolStudent = HighSchoolStudent("Abir", 80, 6);

  HighSchoolStudent highSchoolStudent2 = HighSchoolStudent("Hasan", 70, 7);

  HighSchoolStudent highSchoolStudent3 = HighSchoolStudent("Saikat", 50, 8);

  List<HighSchoolStudent> information =[highSchoolStudent, highSchoolStudent2, highSchoolStudent3];
  printAllReports(information);
}