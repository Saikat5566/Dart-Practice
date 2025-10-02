// Employee নামে একটি parent class বানাও।
// প্রাইভেট প্রপার্টি: _name, _salary
// Constructor দিয়ে মান সেট করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// একটি displayInfo() ফাংশন বানাতে হবে যেটা নাম ও সেলারি প্রিন্ট করবে।
// Manager নামে একটি child class বানাও, যা Employee থেকে inherit করবে।
// প্রাইভেট প্রপার্টি থাকবে _department।
// Constructor এ super() ব্যবহার করে parent এর constructor কল করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// displayInfo() মেথড override করে, নাম + সেলারি + ডিপার্টমেন্ট প্রিন্ট করতে হবে।
// Developer নামে আরেকটি child class বানাও।
// প্রাইভেট প্রপার্টি থাকবে _programmingLanguage।
// Constructor এ super() ব্যবহার করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// displayInfo() মেথড override করে নাম + সেলারি + ল্যাংগুয়েজ প্রিন্ট করতে হবে।
// main() ফাংশনে –
// একটি Manager অবজেক্ট তৈরি করো (নাম: “Abir”, সেলারি: 50000, ডিপার্টমেন্ট: “HR”)।
// একটি Developer অবজেক্ট তৈরি করো (নাম: “Mitu”, সেলারি: 60000, ল্যাংগুয়েজ: “Kotlin”)।
// তাদের displayInfo() কল করো।

class Employee {
  String? _name;
  double? _salary;

  Employee(this._name, this._salary);

  String getName() {
    return _name!;
  }

  double getSalary() {
    return _salary!;
  }

  void setName(String name) {
    this._name = name;
  }

  void setSalary(double salary) {
    this._salary = salary;
  }

  void displayInfo() {
    print("Employee name is $_name");
    print("Salary is $_salary");
  }
}

class Manager extends Employee {
  String? _department;
  Manager(this._department, String name, double salary) : super(name, salary);

  String getDepartment() {
    return _department!;
  }

  void setDepartment(String department) {
    this._department = department;
  }

  void displayInfo() {
    print("Manager name is $_name");
    print("Salary is $_salary");
    print("Department : $_department");
  }
}

class Developer extends Employee {
  String? _programmingLanguage;

  Developer(this._programmingLanguage, String name, double salary)
    : super(name, salary);

  String getProgrammingLanguage() {
    return _programmingLanguage!;
  }

  void setProgrammingLanguage(String programmingLanguage) {
    this._programmingLanguage = programmingLanguage;
  }

  void displayInfo() {
    print("Developer name is $_name");
    print("Developer salary is $_salary");
    print("Programming Language is $_programmingLanguage");
  }
}

void main() {
  Manager manager = Manager("HR", "Abir", 30000);
  manager.displayInfo();

  Developer developer = Developer("Dart & Flutter", "Mitu", 20000);
  developer.displayInfo();
}
