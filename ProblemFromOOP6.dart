// ✅ Question 1: University Management System
// একটা প্রোগ্রাম লেখো যেখানে—
// Person নামে একটা abstract class থাকবে।
// প্রাইভেট প্রোপার্টি থাকবে: _name, _age
// Constructor দিয়ে value সেট হবে।
// Abstract method displayInfo() থাকবে।
// Normal method greet() থাকবে → print করবে "Hello, I am $_name".
// Student ক্লাস Person কে extends করবে।
// অতিরিক্ত প্রোপার্টি থাকবে: _roll, _department.
// Constructor দিয়ে সব মান সেট করতে হবে এবং super ব্যবহার করে parent class এর মান নিতে হবে।
// displayInfo() method override করবে।
// Teacher ক্লাস Person কে extends করবে।
// অতিরিক্ত প্রোপার্টি থাকবে: _salary, _subject.
// Constructor দিয়ে সব মান সেট করতে হবে এবং super ব্যবহার করতে হবে।
// displayInfo() method override করবে।
// Main function এ:
// একটি Student অবজেক্ট তৈরি করো (নাম: "Abir", বয়স: 22, রোল: 101, ডিপার্টমেন্ট: "CSE")।
// একটি Teacher অবজেক্ট তৈরি করো (নাম: "Mitu", বয়স: 30, স্যালারি: 40000, বিষয়: "Math" )।
// দুইজনের greet() এবং displayInfo() কল করো।

abstract class Person{
  String? name;
  int? age;

  Person(this.name,this.age);

  void displayInfo();

  void greet(){
    print("Hello, I an $name");
  }
}

class Student extends Person{
  int? roll;
  String? department;

  Student(String name, int age, this.roll, this.department): super(name, age);

  @override
  void displayInfo() {
    print("Age is $age \nRoll No $roll \nDepartment is $department");
  }
}

class Teacher extends Person{
  double? salary;
  String? subject;

  Teacher(String name, int age, this.subject, this.salary): super(name,age);

  @override
  void displayInfo() {
    print("Age is $age \nSubject is $subject \nSalary is $salary");
  }
}

void main(){
  Student student = Student("Saikat", 22, 660683, "Computer");
  student.greet();
  student.displayInfo();

  Teacher teacher = Teacher("Abir", 40, "Flutter & Dart", 30000);
  teacher.greet();
  teacher.displayInfo();
}