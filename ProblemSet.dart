// 1. Student ক্লাস → name, roll, marks → constructor দি য়ে initialize + print কর ো।

// class Student {
//   String? name;
//   int? roll;
//   double? marks;
//
//   Student(this.name, this.roll, this.marks);
//
//   void show(){
//     print("Name is : $name");
//     print("Roll is : $roll");
//     print("Marks is : $marks");
//   }
// }
//
// void main(){
//   Student student = Student("Saikat", 22, 85);
//   student.show();
// }


// 2. Student ক্লাস → name, roll, marks → constructor দি য়ে initialize + print কর ো।

// class Rectangle{
//   double? length;
//   double? width;
//
//   Rectangle(this.length,this.width);
//
//   void show(){
//     print("Rectangle Area is : ${length!*width!}");
//   }
// }
//
// void main(){
//   Rectangle rectangle = Rectangle(12, 20);
//   rectangle.show();
// }


// 3. Circle ক্লাস → radius → constructor দি য়ে set কর ো → getArea(), getPerimeter()

// import 'dart:math';
//
// class Circle{
//   double? _radius;
//
//   Circle(this._radius);
//
//   double getArea(){
//     return pi*_radius!*_radius!;
//   }
//
//   double getPerimeter(){
//     return 2*pi*_radius!;
//   }
//
//   void setArea(double radius){
//     this._radius = radius;
//   }
//
//   void show(){
//     print(getArea());
//     print(getPerimeter());
//   }
// }
//
// void main(){
//   Circle circle = Circle(20);
//   circle.show();
// }


// 4. Car ক্লাস → brand, model, year → constructor + function দি য়ে print কর ো।

// class Car{
//   String? brand;
//   String? model;
//   int? year;
//
//   Car(this.brand, this.model, this.year);
//
//   void show(){
//     print("Car Brand is $brand, \nModel is $model, \nYear is $year.");
//   }
// }
//
// void main(){
//   Car car = Car("BMW", "M34F56H", 2024);
//   car.show();
// }


// 5. Book ক্লাস → title, author, price → constructor + function → book details print কর ো।

// class Book{
//   String? title;
//   String? author;
//   double? price;
//
//   Book(this.title, this.author,this.price);
//
//   void show(){
//     print("Book Name is $title");
//     print("Author of this book $author");
//     print("Price is $price BDT");
//   }
// }
//
// void main(){
//   Book book = Book("Chemistry", "Jabir ibn Hayyan", 1200);
//   book.show();
// }


// 6. Employee ক্লাস → name, id, salary → constructor দি য়ে initialize → function দি য়ে yearly salary বে র কর ো।

// class Employee{
//   String? name;
//   int? id;
//   double? salary;
//
//   Employee(this.name,this.id,this.salary);
//
//   double Salary(){
//     return salary!*12;
//   }
//
//   void show(){
//     print("Employee name is $name");
//     print("Employee I'D is $id");
//     print("Monthly salary is $salary");
//     print("Employee's Annual Salary is ${Salary()}");
//   }
// }
//
// void main(){
//   Employee employee = Employee("Saikat", 660683, 12000);
//   employee.show();
// }

// 7. Calculator ক্লাস → constructor দইু সংখ্যা নে বে → add, subtract, multiply, divide ফাংশন বানাও।

// class Calculator{
//   double? num;
//   double? num2;
//
//   Calculator(this.num, this.num2);
//
//   void show(){
//     print("Addition is : ${num!+num2!}");
//     print("Substraction is : ${num!-num2!}");
//     print("Multiplication is : ${num!*num2!}");
//     print("Division is : ${num!/num2!}");
//   }
// }
//
// void main(){
//   Calculator calculator = Calculator(10, 20);
//   calculator.show();
// }


// 8. Laptop ক্লাস → brand, processor, price → constructor দি য়ে set কর ো → print function।

// class Laptop{
//   String? brand;
//   String? processor;
//   double? price;
//
//   Laptop(this.brand, this.processor, this.price);
//
//   void show(){
//     print("Laptop's brand is $brand \nProcessor is $processor \nPrice is $price BDT");
//   }
// }
// void main(){
//   Laptop laptop = Laptop("Lenevo", "Core i7 6th generation", 32000);
//   laptop.show();
// }


// 9. Box ক্লাস → length, width, height → constructor দি ে set কর ো → function দিয়ে volume বের কর ো।

// class Box{
//   double? length;
//   double? width;
//   double? height;
//
//   Box(this.length,this.width,this.height);
//
//   double volume(){
//     return length!*width!*height!;
//   }
//
//   void show(){
//     print("Box volume is ${volume()}");
//   }
// }
//
// void main(){
//   Box box = Box(12, 8, 16);
//   box.show();
// }


// 10. Temperature ক্লাস → constructor এ celsius নে বে → functions: toFahrenheit(), toKelvin()। fahrenheit = °F = (°C × 9/5) + 32 , kelvin = K = C + 273.5

// class Temperature{
//   double? celsius;
//
//   Temperature(this.celsius);
//
//   double toFahrenheit(){
//     return ((celsius!*9/5)+32);
//   }
//   double toKelvin(){
//     return ((celsius!+273.5));
//   }
//
//   void show(){
//     print(" Celsius to Fahrenheit : ${toFahrenheit()} ");
//     print("Celsius to Kelvin : ${toKelvin()}");
//   }
// }
//
// void main(){
//   Temperature temperature = Temperature(28);
//   temperature.show();
// }


// 11. BankAccount ক্লাস → accNumber, holderName, balance → constructor + deposit(), withdraw(), showBalance()।
//
// class BankAccount{
//
//   int? accNumber;
//   String? holderName;
//   double? balance;
//
//   BankAccount(this.accNumber, this.holderName, this.balance);
//
//
//   double deposit(double amount) {
//     return balance!+amount;
//   }
//
//   double withdraw(double amount){
//     return deposit(balance!)-amount;
//   }
//
//   void showBalance() {
//     print("Account Number: $accNumber");
//     print("Holder Name: $holderName");
//     print("Current Balance: $balance");
//     print("After 10000 BDT Deposit Total Balance : ${deposit(10000)}");
//     print("After 5000 BDT Withdraw Total Balance : ${withdraw(5000)} ");
//   }
// }
//
// void main(){
//   BankAccount bankAccount = BankAccount(16405276, "Saikat", 10000);
//   bankAccount.showBalance();
// }


// 12. Complex ক্লাস → real, imag → constructor দি য়ে set কর ো → function add(), subtract() complex number

// class Complex {
//   int? real;
//   int? imaginary;
//
//   Complex(this.real, this.imaginary);
//
//   num add(){
//     return real!+imaginary!;
//   }
//   num subtract(){
//     return real!-imaginary!;
//   }
//
//   void show (){
//     print("Addition number is ${add()}");
//     print("Substraction number is ${subtract()}");
//   }
// }
//
// void main(){
//   Complex complex = Complex(5, 6);
//
//   complex.show();
// }


// 14. Student ক্লাস → name, roll, 3 subject marks → constructor দি য়ে set → function totalMarks(), averageMarks(), grade বে র কর ো

// class Student{
//   String? name;
//   int? roll;
//   double? marks1, marks2, marks3;
//
//   Student(this.name, this.roll, this.marks1, this.marks2, this.marks3);
//
//   double totalMarks(){
//     return marks1!+marks2!+marks3!;
//   }
//
//   double averageMarks(){
//     return (totalMarks()/3);
//   }
//
//   void show(){
//     print("Student name is $name \nRoll no $roll");
//     print("Total Marks ${totalMarks()} \nAverage Marks is ${averageMarks()}");
//   }
// }
//
// void main(){
//   Student student = Student("Saikat", 660683, 85, 89.5, 95);
//   student.show();
// }


// 15. Point ক্লাস → x, y → constructor দি য়ে set → function distance from origin বে র কর ো।

// import 'dart:math';
// class Point{
//   double? x,y;
//
//   Point(this.x,this.y);
//
//   double distanceFromOrigin(){
//     return sqrt((x!*x!)+(y!*y!));
//   }
//
//   void show(){
//     print("Distance from origin : ${distanceFromOrigin()} ");
//   }
// }
//
// void main(){
//   Point point = Point(5, 7);
//   point.show();
// }


// 16. Rectangle ক্লাস → default constructor (0,0), parameterized constructor (length,width) → function area বে র কর ো।

// class Rectangle {
//   double? length, width;
//
//   Rectangle(){
//     length = 0;
//     width = 0;
//   }
//
//   Rectangle.withValues(this.length, this.width);
//
//   double area(){
//     return length!*width!;
//   }
//
//   void show(){
//     print("Rectangle Area is ${area()}");
//   }
// }
//
// void main(){
//   Rectangle rectangle = Rectangle();
//   rectangle.show();
//   Rectangle rectangle2 = Rectangle.withValues(12, 16);
//   rectangle2.show();
// }


// 17. MovieTicket ক্লাস → movieName, seatNo, price → constructor দি য়ে set → function printTicket()।

// class MovieTicket{
//   String? movieName;
//   int? seatNo;
//   double? price;
//
//   MovieTicket(this.movieName, this.seatNo, this.price);
//
//   void printTicket(){
//     print("Movie name is : $movieName \nSeat Number is : $seatNo \nPrice is : $price BDT");
//   }
// }
//
// void main(){
//   MovieTicket movieTicket = MovieTicket("Avengers Doomsday", 101, 1200);
//   movieTicket.printTicket();
// }


// 18. Item ক্লাস → name, quantity, price → constructor দি য়ে set → function totalCost বে র কর ো।

// class Item{
//   String? name;
//   double? quantity;
//   double? price;
//
//   Item(this.name, this.quantity, this.price);
//
//   double totalCost(){
//     return quantity!*price!;
//   }
//
//   void show(){
//     print("Item is $name");
//     print("Quantity is $quantity");
//     print("Total cost is ${totalCost()}");
//   }
// }
//
// void main(){
//   Item item = Item("AMD Ryzen 7 8700G Processor", 100, 29800);
//   item.show();
// }


// 19. Teacher ক্লাস → name, subject, salary → constructor দি য়ে set → function displayInfo()

// class Teacher{
//   String? name;
//   String? subject;
//   String? salary;
//
//   Teacher(this.name, this.subject, this.salary);
//
//   void displayInfo(){
//     print("Teacher's name is $name \nHis Subject is $subject \nHis salary is $salary Taka");
//   }
// }
//
// void main(){
//   Teacher teacher = Teacher("Saikat", "Flutter", "15000");
//   teacher.displayInfo();
// }


// 20. Bill ক্লাস → customerName, units → constructor → function calculateBill():
// ● units ≤ 100 → 5 টাকা/unit
// ● 100–200 → 7 টাকা/unit
// ● 200 → 10 টাকা/uni


// class Bill{
//   String? customerName;
//   double? units;
//
//   Bill(this.customerName,this.units);
//
//   String calculateBill(){
//     if (units! <= 100){
//       return "5 টাকা/unit";
//     }
//     else if(units! <= 200){
//       return "7 টাকা/unit";
//     }
//     else{
//       return "10 টাকা/uni";
//     }
//   }
//
//   void show(){
//     print("Customer Name is $customerName");
//     print("Units $units \n${calculateBill()}");
//   }
// }
//
// void main(){
//   Bill bill = Bill("Saikat", 150);
//   bill.show();
// }

















































