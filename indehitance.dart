class Person{
  String? name;
  int? age;

  Person(this.name, this.age);

  void displayInfo(){
    print("My name is $name");
    print("My age is $age");
  }
}

class Student extends Person{
  int? studentId;
  double? grade;

  Student(String name, int age, this.studentId, this.grade): super(name , age);

  void displayStudentInfo (){
    print("Student ID is $studentId");
    print("Grade is $grade");
  }
}

void main (){


  Student student = Student("Saikat", 22, 660683, 3.65);
  student.displayStudentInfo();
}