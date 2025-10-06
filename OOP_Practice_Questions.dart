// 1. Student Class with Methods
// Create a class Student with properties [id, name, grade].
// Add a method showDetails() to print student details.
// Create 3 objects and call showDetails() for each.

// class Student{
//   int? id;
//   String? name;
//   double? grade;
//
//   void showDetails(){
//     print("ID : $id Name : $name Grade : $grade");
//   }
// }
//
// void main(){
//   Student student = Student();
//   student.id = 660683;
//   student.name = "Saikat";
//   student.grade = 3.56;
//
//   student.showDetails();
// }

// 2. Book Class and List
// Create a class Book with properties [id, title, author, price].
// Create a constructor to initialize the properties.
// Add 3 books to a List<Book> and print all details using a loop.

// class Book {
//   int? id;
//   String? title;
//   String? author;
//   double? price;
//
//   Book(this.id, this.title, this.author, this.price);
//
//   void show(){
//     print("ID : $id, Title : $title, Author : $author, Price : $price");
//   }
// }
//
// void main(){
//   Book book = Book(01, "Dart", "Saikat", 2500.00);
//   Book book2 = Book(02, "Flutter", "Saikat", 2500.00);
//
//   List<Book> item = [book,book2];
//
//   for(var item in item){
//     item.show();
//   }
// }

// 3. Enum Example
// Create an enum Day with values [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
// Print all values using Day.values.

// enum Day {Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}
//
// void main(){
//   print(Day.values);
// }

// 4. Inheritance Example
// Create a class Vehicle with [id, name, speed].
// Create a subclass Car which adds [fuelType, seatingCapacity].
// Create a Car object and print all details.

// class Vehicle {
//   int? id;
//   String? name;
//   double? speed;
// }
//
// class Car extends Vehicle{
//   String? fuelType;
//   int? seatingCapacity;
//
//   void show(){
//     print(id);
//     print(name);
//     print(speed);
//     print(fuelType);
//     print(seatingCapacity);
//   }
// }
//
// void main(){
//   Car car = Car();
//   car.id = 01;
//   car.name = "Toyota";
//   car.speed = 1200;
//   car.fuelType = "Petrol";
//   car.seatingCapacity = 5;
//
//   car.show();
// }

// 5. Encapsulation
// Create a class BankAccount with private properties [accountNumber, holderName, balance].
// Add getter and setter methods for balance.
// Create 3 objects and update & display balances.

// class BankAccount{
//   int? _accountNumber;
//   String? _holderName;
//   double? _balance;
//
//   int getAccountNumber(){
//     return _accountNumber!;
//   }
//   String getHolderName(){
//     return _holderName!;
//   }
//   double getBalance(){
//     return _balance!;
//   }
//
//   void setAccountNumber(int accountNumber){
//     this._accountNumber = accountNumber;
//   }
//   void setHolderName(String holderName){
//     this._holderName = holderName;
//   }
//   void setBalance(double balance){
//     this._balance = balance;
//   }
//
//   void show(){
//     print("Account Number : $_accountNumber \nHolder Name : $_holderName \nBalance : $_balance");
//   }
// }
//
// void main(){
//   BankAccount bankAccount = BankAccount();
//   bankAccount._accountNumber = 660683;
//   bankAccount._holderName = "Saikat";
//   bankAccount._balance = 30000;
//
//   bankAccount.show();
// }

// 6. Interface Implementation
// Create an interface Printer with method printDocument().
// Create a class HPPrinter that implements Printer and prints "HP Printer is printing...".
// Create a factory constructor in the interface that returns an object of HPPrinter.
// Call the printDocument() method using the factory constructor.

// abstract class Printer{
//   void printDocument();
//
//   factory Printer(){
//     return HPPrinter();
//   }
// }
//
// class HPPrinter implements Printer {
//   @override
//   void printDocument() {
//     // TODO: implement printDocument
//     print("HP Printer is printing");
//   }
// }
//
// void main(){
//   Printer printer = Printer();
//   printer.printDocument();
// }

// 7. Mixins
// Create a mixin Flyable with method fly().
// Create a class Bird with properties [name, color].
// Use the mixin Flyable in Bird and call fly().

// mixin Flyable{
//   void fly();
// }
//
// class Bird with Flyable{
//   String? name;
//   String? color;
//
//   @override
//   void fly() {
//     // TODO: implement fly
//     print("Name is $name and Color is $color");
//   }
// }
//
// void main() {
//   Bird bird = Bird();
//   bird.name = "Hamming Bird";
//   bird.color = "green";
//
//   bird.fly();
// }

// 8. Polymorphism
// Create a class Shape with method area().
// Create subclasses Rectangle and Circle and override area() method.
// Print area of a rectangle and circle.

// import 'dart:math';
//
// class Shape{
//   void area(){
//
//   }
// }
//
// class Rectangle extends Shape{
//   double? length;
//   double? width;
//
//   Rectangle(this.length, this.width);
//
//   @override
//   void area() {
//     // TODO: implement area
//     print("Area : ${length!*width!}");
//   }
// }
//
// class Circle extends Shape{
//   double? r;
//
//   Circle(this.r);
//   @override
//   void area() {
//     // TODO: implement area
//     print("Area :${pi*r!*r!}");
//   }
// }
//
// void main(){
//   Rectangle rectangle = Rectangle(15, 7);
//   rectangle.area();
//
//   Circle circle = Circle(4);
//   circle.area();
// }

// 9. QShopping Cart
// Create a class Product with [id, name, price].
// Create a class Cart with method addProduct(), removeProduct(), totalPrice().
// Demonstrate adding 3 products and showing the total price.

// class Product{
//   int? id;
//   String? name;
//   double? price;
//
//   Product(this.id, this.name, this.price);
// }
//
// class Cart{
//   List<Product> product = [];
//
//   void addProduct(Product p){
//     product.add(p);
//     print("Added : ${p.name}");
//   }
//
//   void removeProduct(Product p){
//     product.remove(p);
//     print("Removed : ${p.name}");
//   }
//
//   void totalPrice(){
//     double total = 0;
//
//     for(var mrp in product){
//       total = total + mrp.price!;
//     }
//     print("Total Price : $total");
//   }
// }
//
// void main(){
//   Product product = Product(01, "Laptop", 32000);
//   Product product2 = Product(02, "Mobile", 20000);
//   Product product3 = Product(03, "PC", 50000);
//
//   Cart cart = Cart();
//   cart.addProduct(product);
//   cart.addProduct(product2);
//   cart.addProduct(product3);
//
//   cart.totalPrice();
//
//   cart.removeProduct(product2);
// }





