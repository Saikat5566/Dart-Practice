// একটা প্রোগ্রাম লেখো যেখানে –
// Person নামে একটা parent class থাকবে।
// প্রাইভেট প্রপার্টি: _name এবং _age
// Constructor দিয়ে মান সেট করা যাবে।
// Getter এবং Setter দিয়ে _name এবং _age নিয়ন্ত্রণ করা যাবে।
// Student নামে একটা child class বানাও, যা Person থেকে inherit করবে।
// এর সাথে একটি প্রপার্টি থাকবে _rollNumber (প্রাইভেট)।
// Constructor এ super() ব্যবহার করে parent এর কন্সট্রাক্টর কল করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// main() ফাংশনে:
// অন্তত ২টা Student অবজেক্ট তৈরি করো।
// তাদের নাম, বয়স আর রোল প্রিন্ট করো।


class Person{
  String? _name;
  int? _age;

  Person(this._name,this._age);

  String getName(){
    return _name!;
  }
  int getAge(){
    return _age!;
  }

  void setName(String name){
    this._name = name;
  }
  void setAge(int age){
    this._age = age;
  }
}

class Student extends Person{
  int? _rollNumber;

  Student(this._rollNumber, String name, int age) : super(name , age);

  int getRollNumber(){
    return _rollNumber!;
  }

  void setRollNumber(int rollNumber){
    this._rollNumber = rollNumber;
  }

  void show(){
      print("Student Name is $_name");
      print("His Age is $_age");
      print("His roll is $_rollNumber");
  }
}

void main(){
  Student student = Student(660683, "Saikat", 22) ;
  student.show();
  Student student2 = Student(2122029, "Abir", 22);
  student2.show();

}