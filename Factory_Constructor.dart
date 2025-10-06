// class Area{
//   final double length;
//   final double width;
//   final double area;
//
//   const Area._internal(this.length, this.width) : area = length * width;
//
//   factory Area (double length, double width){
//     if(length < 0 || width < 0){
//       throw Exception("Area Can't be Negative");
//     }
//     else{
//       return Area._internal(length , width);
//     }
//   }
//
//   void show(){
//     print("Area is $area");
//   }
// }
//
// void main(){
//   Area area = Area(150, 250);
//   area.show();
// }

// class Person{
//   String name;
//   int id;
//
//   Person(this.name, this.id);
//
//   factory Person.FromMap(Map<String , Object>map){
//     final name = map["name"] as String;
//     final id = map["id"] as int;
//
//     return Person(name , id);
//   }
//
//   void show(){
//     print("Name is $name and Id is $id");
//   }
// }
//
// void main(){
//   Person person = Person.FromMap({"name": "Saikat", "id": 660683 });
//   person.show();
// }

// enum ShapeType {circle , rectangle}
//
// class Circle implements Shape{
//   void draw(){
//     print("This is a Circle");
//   }
// }
//
// class Rectangle implements Shape{
//   void draw(){
//     print("This is a Rectangle");
//   }
// }
//
// abstract class Shape {
//   factory Shape (ShapeType type){
//     switch(type){
//       case ShapeType.circle:
//         return Circle();
//       case ShapeType.rectangle:
//         return Rectangle();
//       default :   throw "Invalid";
//     }
//   }
//
//   void draw();
// }
//
// void main(){
//   Shape shape = Shape(ShapeType.circle);
//   Shape shape2 =Shape(ShapeType.rectangle);
//
//   shape.draw();
//   shape2.draw();
// }
//


//👉 একটা Shape নামের abstract class বানাও। এর মধ্যে থাকবে একটা method — area() (abstract)।
//আর factory constructor থাকবে Shape-এর মধ্যে, যেটা Circle ক্লাসের object return করবে।
//Circle ক্লাসে একটা property থাকবে radius, আর area() method টা return করবে বৃত্তের ক্ষেত্রফল (3.14 * radius * radius)।
//main() ফাংশনে factory constructor ব্যবহার করে Shape এর object তৈরি করে area() কল করো।

// abstract class Shape {
//   double area();
//
//   factory Shape (double radius){
//     return Circle(radius);
//   }
// }
//
// class Circle implements Shape{
//   double? radius;
//
//   Circle(this.radius);
//
//   @override
//   double area() {
//     // TODO: implement area
//     return (3.14 * radius! * radius!);
//   }
// }
//
// void main(){
//   Shape shape = Shape(15.7);
//
//   print("Area : ${ shape.area()}");
//
// }


//একটা NumberCheck নামে class বানাও। এর মধ্যে একটা factory constructor থাকবে — যেটা ইনপুট হিসেবে একটা integer নেবে।
//যদি সংখ্যাটা positive হয় তাহলে PositiveNumber class-এর object return করবে, আর যদি negative হয় তাহলে NegativeNumber class-এর object return করবে।
//দুইটা ক্লাসেই একটা method থাকবে show() — যেটা প্রিন্ট করবে:
//Positive হলে — “This is a positive number”
//Negative হলে — “This is a negative number”
//main() ফাংশনে factory constructor ব্যবহার করে NumberCheck এর object তৈরি করে show() কল করো।


// abstract class NumberCheck {
//   factory NumberCheck(int a){
//     if(a >= 0){
//       return PositiveNumber();
//     }
//     else{
//       return NegativeNumber();
//     }
//   }
//
//   void show();
// }
//
// class PositiveNumber implements NumberCheck{
//   void show(){
//     print("This is a positive number");
//   }
// }
//
// class NegativeNumber implements NumberCheck{
//   void show(){
//     print("This is a Negative Number");
//   }
// }
//
//
// void main(){
//   NumberCheck numberCheck = NumberCheck(-1);
//
//   numberCheck.show();
// }

//একটা Animal নামে abstract class বানাও। এর মধ্যে থাকবে একটা abstract method sound() এবং একটা factory constructor থাকবে, যেটা ইনপুট হিসেবে একটি string নেবে —
//যেমন "dog" বা "cat"। যদি "dog" দেওয়া হয় তাহলে Dog ক্লাসের object return করবে, আর যদি "cat" দেওয়া হয় তাহলে Cat ক্লাসের object return করবে।
//Dog ক্লাসে sound() প্রিন্ট করবে "Woof! Woof!"
//Cat ক্লাসে sound() প্রিন্ট করবে "Meow! Meow!"
//main() ফাংশনে factory constructor ব্যবহার করে দুইটা animal object তৈরি করে sound() কল করো।

// abstract class Animal {
//   void sound();
//
//   factory Animal(String animalName){
//     if(animalName == "dog"){
//       return Dog();
//     }
//     else{
//       return Cat();
//     }
//   }
// }
//
// class Dog implements Animal{
//   void sound(){
//     print("Woof! Woof!");
//   }
// }
//
// class Cat implements Animal{
//   void sound(){
//     print("Meow! Meow!");
//   }
// }
//
// void main(){
//   Animal animal = Animal("dog");
//   animal.sound();
//   Animal animal2 = Animal("cat");
//   animal2.sound();
// }


//একটা Vehicle নামে abstract class বানাও।
//এর মধ্যে থাকবে একটা abstract method start().
//আর একটা factory constructor থাকবে,
//যেটা ইনপুট হিসেবে একটা string নেবে — "car" বা "bike"।
//যদি "car" দেওয়া হয় তাহলে Car ক্লাসের object return করবে,
//আর যদি "bike" দেওয়া হয় তাহলে Bike ক্লাসের object return করবে।
//Car ক্লাসে start() method প্রিন্ট করবে — "Car is starting..."
//Bike ক্লাসে start() method প্রিন্ট করবে — "Bike is starting..."
//main() ফাংশনে factory constructor ব্যবহার করে দুইটা vehicle object তৈরি করে start() কল করো।


// abstract class Vehicle{
//   void start();
//
//   factory Vehicle(String type){
//     if(type == "car"){
//       return Car();
//     }
//     else{
//       return Bike();
//     }
//   }
// }
//
// class Car implements Vehicle{
//   void start(){
//     print("Car is Starting");
//   }
// }
//
// class Bike implements Vehicle{
//   @override
//   void start() {
//     // TODO: implement start
//     print("Bike is Starting");
//   }
// }
//
// void main(){
//   Vehicle vehicle = Vehicle("car");
//   vehicle.start();
//
//   Vehicle vehicle2= Vehicle("Bike");
//   vehicle2.start();
// }


//একটা Login নামে class বানাও। এর মধ্যে থাকবে একটা factory constructor, যেটা ইউজারের username আর password ইনপুট নেবে।
//যদি username "admin" আর password "1234" হয় — তাহলে AdminLogin ক্লাসের object return করবে,
//অন্যথায় GuestLogin ক্লাসের object return করবে।
//AdminLogin ক্লাসে একটি method welcome() থাকবে যেটা প্রিন্ট করবে —
//"Welcome, Admin!"
//GuestLogin ক্লাসে method welcome() প্রিন্ট করবে —
//"Welcome, Guest!"
//main() ফাংশনে factory constructor ব্যবহার করে দুইটা object তৈরি করে welcome() কল করো।

// class Login{
//   factory Login (String username, String password){
//     if(username == "admin" && password == "1234"){
//       return AdminLogin();
//     }
//     else{
//       return GuestLogin();
//     }
//   }
// }
//
// class AdminLogin implements Login{
//   void welcome(){
//     print("Welcome, Admin!");
//   }
// }
//
// class GuestLogin implements Login{
//   void welcome(){
//     print("Welcome, Guest!");
//   }
// }
//
// void main(){
//   Login user = Login("admin", "1234");
//   (user as AdminLogin).welcome();
//
//   Login user2 = Login("Guest", "2457");
//   (user2 as GuestLogin).welcome();
// }


//একটা Shape নামের abstract class বানাও। এর মধ্যে থাকবে একটা abstract method area()।
//Factory constructor ব্যবহার করে Shape ক্লাসের object তৈরি করবে এমনভাবে যে — যদি "rectangle" ইনপুট দেওয়া হয় তাহলে Rectangle ক্লাসের object return করবে,
//আর যদি "square" ইনপুট দেওয়া হয় তাহলে Square ক্লাসের object return করবে।
//Rectangle ক্লাসে property থাকবে length এবং width, আর Square ক্লাসে থাকবে side। দুই ক্লাসেই area() method implement করে ক্ষেত্রফল return করবে।
//main() ফাংশনে factory constructor ব্যবহার করে দুইটা object তৈরি করো এবং তাদের area প্রিন্ট করো।

// abstract class Shape {
//   void area();
//
//   factory Shape(String type, double a, [double? b]){
//     if(type == "rectangle"){
//       return Rectangle(a , b ?? 0);
//     }
//     else if(type == "square"){
//       return Square(a);
//     }
//     else{
//       throw Exception("Invalid Shape");
//     }
//   }
// }
//
// class Rectangle implements Shape{
//   double? length;
//   double? width;
//
//   Rectangle(this.length, this.width);
//
//   void area(){
//     print("Rectangle Area : ${length!*width!}");
//   }
// }
//
// class Square implements Shape{
//   double? side;
//
//   Square(this.side);
//
//   @override
//   void area() {
//     print("Square Area : ${side!*side!}");
//   }
// }
//
// void main(){
//   Shape shape = Shape("rectangle", 5, 7);
//   Shape shape2 = Shape("square", 4);
//
//   shape.area();
//   shape2.area();
// }


//একটা abstract class Payment বানাও। এর মধ্যে থাকবে একটি abstract method pay(double amount)।
//Factory constructor ব্যবহার করে Payment এর object তৈরি করবে এমনভাবে যে —
//যদি "Bkash" ইনপুট দেওয়া হয় তাহলে BkashPayment class return করবে।
//যদি "Nagad" ইনপুট দেওয়া হয় তাহলে NagadPayment class return করবে।
//যদি "Rocket" ইনপুট দেওয়া হয় তাহলে RocketPayment class return করবে।
//প্রতিটি ক্লাসে pay(double amount) method implement করবে এবং প্রিন্ট করবে —
//"Paid [amount] via Bkash"
//"Paid [amount] via Nagad"
//"Paid [amount] via Rocket"
//main() ফাংশনে factory constructor ব্যবহার করে তিন ধরনের payment object তৈরি করো এবং তাদের pay() method কল করো।

// abstract class Payment{
//   void pay(double amount);
//
//   factory Payment(String type){
//     if(type == "Bkash"){
//       return BkashPayment();
//     }
//     else if (type == "Nagad"){
//       return NagadPayment();
//     }
//     else if (type == "Rocket"){
//       return RocketPayment();
//     }
//     else {
//       throw Exception("Invalid");
//     }
//   }
// }
//
// class BkashPayment implements Payment{
//   @override
//   void pay(double amount) {
//     // TODO: implement pay
//     print("Paid $amount via Bkash");
//   }
// }
//
// class NagadPayment implements Payment{
//   @override
//   void pay(double amount) {
//     // TODO: implement pay
//     print("Paid $amount via Nagad");
//   }
// }
//
// class RocketPayment implements Payment{
//   @override
//   void pay(double amount) {
//     // TODO: implement pay
//     print("Paid $amount via Rocket");
//   }
// }
//
// void main(){
//   Payment payment = Payment("Bkash");
//   payment.pay(2000);
//
//   Payment payment2 = Payment("Nagad");
//   payment2.pay(2000);
//
//   Payment payment3 = Payment("Rocket");
//   payment3.pay(2000);
// }


//একটা abstract class NumberType বানাও। এর মধ্যে থাকবে abstract method describe().
//Factory constructor ব্যবহার করে ইনপুট হিসেবে একটি integer number নাও।
//যদি number even হয় তাহলে EvenNumber class return করবে।
//যদি number odd হয় তাহলে OddNumber class return করবে।
//EvenNumber class-এ describe() প্রিন্ট করবে — "This is an even number"
//OddNumber class-এ describe() প্রিন্ট করবে — "This is an odd number"
//main() ফাংশনে factory constructor ব্যবহার করে দুইটি object তৈরি করো এবং তাদের describe() কল করো।

// abstract class NumberType{
//   void describe();
//
//   factory NumberType (int number){
//     if(number%2==0){
//       return EvenNumber();
//     }
//     else{
//       return OddNumber();
//     }
//   }
// }
//
// class EvenNumber implements NumberType{
//   @override
//   void describe() {
//     // TODO: implement describe
//     print("This is an Even Number");
//   }
// }
//
// class OddNumber implements NumberType {
//   @override
//   void describe() {
//     // TODO: implement describe
//     print("This is an Odd Number");
//   }
// }
//
// void main(){
//   NumberType numberType = NumberType(6);
//   numberType.describe();
// }


//একটা abstract class Grade বানাও। এর মধ্যে থাকবে abstract method showGrade().
//Factory constructor ব্যবহার করে একটি integer mark ইনপুট নাও:
//যদি mark >= 80, তাহলে A_Grade class return করবে।
//যদি mark >= 60 কিন্তু < 80, তাহলে B_Grade class return করবে।
//যদি mark >= 40 কিন্তু < 60, তাহলে C_Grade class return করবে।
//যদি mark < 40, তাহলে F_Grade class return করবে।
//প্রতিটি class-এ showGrade() method implement করবে এবং প্রিন্ট করবে:
//"You got A grade"
//"You got B grade"
//"You got C grade"
//"You got F grade"
//main() ফাংশনে factory constructor ব্যবহার করে বিভিন্ন mark এর জন্য object তৈরি করে showGrade() কল করো।

// abstract class Grade{
//   void showGrade();
//
//   factory Grade(int mark){
//     if(mark >= 80){
//       return A_Grade();
//     }
//     else if(mark >= 60){
//       return B_Grade();
//     }
//     else if(mark >= 40){
//       return C_Grade();
//     }
//     else{
//       return F_Grade();
//     }
//   }
// }
//
// class A_Grade implements Grade {
//   @override
//   void showGrade() {
//     // TODO: implement showGrade
//     print("You got A grade");
//   }
// }
//
// class B_Grade implements Grade {
//   @override
//   void showGrade() {
//     // TODO: implement showGrade
//     print("You got B grade");
//   }
// }
//
// class C_Grade implements Grade {
//   @override
//   void showGrade() {
//     // TODO: implement showGrade
//     print("You got C grade");
//   }
// }
//
// class F_Grade implements Grade {
//   @override
//   void showGrade() {
//     // TODO: implement showGrade
//     print("You got F grade");
//   }
// }
//
// void main(){
//   Grade grade = Grade(85);
//   grade.showGrade();
//
//   Grade grade2 = Grade(65);
//   grade2.showGrade();
//
//   Grade grade3 = Grade(45);
//   grade3.showGrade();
//
//   Grade grade4 = Grade(35);
//   grade4.showGrade();
// }
























