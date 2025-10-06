// Question 1: Animal → Swimmer
// একটা Animal base class বানাও।
// একটা Swimmer mixin বানাও যা শুধু Animal এর উপর কাজ করবে (mixin Swimmer on Animal)।
// Method: swim() → print করবে "Animal is swimming"
// Fish class বানাও, যা Animal কে extend করে এবং Swimmer use করবে।
// Main function এ Fish দিয়ে swim() call করো।

// class Animal {
//
// }
//
// mixin Swimmer on Animal{
//   void swim() => print("Animal is Swimming");
// }
// class Fish extends Animal with Swimmer{
//
// }
//
// void main(){
//   Fish fish = Fish();
//   fish.swim();
// }

// Question 2: Vehicle → ElectricFeature
// একটা Vehicle base class বানাও।
// একটা ElectricFeature mixin বানাও যা শুধু Vehicle এর উপর কাজ করবে।
// Method: charge() → print করবে "Vehicle is charging..."
// Car class বানাও, Vehicle extend করবে এবং ElectricFeature use করবে।
// Main এ Car দিয়ে charge() call করো।

// class Vehicle{
//
// }
//
// mixin ElectricFeature on Vehicle{
//   void charge() => print("Vehicle is Charging");
// }
//
// class Car extends Vehicle with ElectricFeature{
//
// }
//
// void main (){
//   Car car = Car();
//   car.charge();
// }

// Question 3: Shape → Drawable
// একটা Shape abstract class বানাও।
// একটা Drawable mixin বানাও যা শুধু Shape এর উপর কাজ করবে।
// Method: draw() → print করবে "Drawing shape..."
// Circle এবং Rectangle class বানাও, যা Shape extend করে এবং Drawable use করবে।
// Main function এ দুটি object দিয়ে draw() call করো।

// abstract class Shape{
//
// }
//
// mixin Drawable on Shape{
//   void draw(){
//     print("Drawing Shape");
//   }
// }
//
// class Circle extends Shape with Drawable{
//
// }
//
// class Rectangle extends Shape with Drawable{
//
// }
//
// void main(){
//   Circle circle = Circle();
//   circle.draw();
//   Rectangle rectangle =Rectangle();
//   rectangle.draw();
// }

// Question 4: Employee → Payable
// একটা Employee class বানাও।
// একটা Payable mixin বানাও যা শুধু Employee এর উপর কাজ করবে।
// Method: paySalary() → print করবে "Paying salary to employee"
// Manager class বানাও, Employee extend করবে এবং Payable use করবে।
// Main function এ Manager object দিয়ে paySalary() call করো।

// class Employee{
//
// }
//
// mixin Payable on Employee{
//   void paySalary() => print("Paying salary to employee");
// }
//
// class Manager extends Employee with Payable{
//
// }
//
// void main(){
//   Manager manager = Manager();
//   manager.paySalary();
// }

// Question 5: Device → WifiEnabled
// একটা Device base class বানাও।
// একটা WifiEnabled mixin বানাও যা শুধু Device এর উপর কাজ করবে।
// Method: connectWifi(String ssid) → print করবে "Connected to $ssid"
// Smartphone class বানাও, যা Device extend করে এবং WifiEnabled use করবে।
// Main function এ Smartphone দিয়ে connectWifi("Home_Network") call করো।

// class Device {
//
// }
//
// mixin WifiEnabled on Device{
//   void connectWifi(String SSID) => print("Connected to $SSID");
// }
//
// class Smartphone extends Device with WifiEnabled{
//
// }
//
// void main(){
//   Smartphone smartphone = Smartphone();
//   smartphone.connectWifi("TP Link");
// }
//


//একটা Animal class বানাও। তারপর দুটি mixin বানাও:
//CanSwim → একটি method swim() থাকবে, যা প্রিন্ট করবে "I can swim"
//CanFly → একটি method fly() থাকবে, যা প্রিন্ট করবে "I can fly"
//Duck class বানাও, যেটা Animal extend করবে এবং CanSwim, CanFly mixin use করবে।
//main() ফাংশনে Duck object তৈরি করে swim() এবং fly() method কল করো।


// class Animal {
//
// }
//
// mixin CanSwim{
//   void swim(){
//     print("I can Swim");
//   }
// }
//
// mixin CanFly{
//   void fly(){
//     print("I can Fly");
//   }
// }
//
// class Duck extends Animal with CanSwim, CanFly{
//
// }
//
// void main(){
//   Duck duck = Duck();
//   duck.swim();
//   duck.fly();
// }



















