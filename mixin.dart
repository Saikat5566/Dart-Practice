// Question 1: Logger Mixin
// Description:
// একটা Logger mixin বানাও যা console এ messages log করবে।
// Method: log(String message) → print করবে "LOG: $message"
// User class বানাও, Logger mixin ব্যবহার করবে।
// Main function এ user object দিয়ে log method call করো।
// -------------------------------------------------------------------------------
// mixin messages{
//   void log(String message) => print("LOG: $message");
// }
//
// class User with messages{
// }
//
// void main(){
//   User user = User();
//   user.log("Hello");
// }
//--------------------------------------------------------------------------------

// Question 2: Flyable Mixin
// Description:
// একটা Flyable mixin বানাও।
// Method: fly() → print করবে "Flying in the sky!"
// Bird এবং Airplane class তৈরি করো যা Flyable use করবে।
// Main function এ একটি Bird ও Airplane object দিয়ে fly() call করো।
// -------------------------------------------------------------------------------
// mixin Flyable{
//   void fly() => print("Flying in the sky");
// }
// class Bird with Flyable{
//
// }
//
// class Airplane with Flyable{
//
// }
//
// void main(){
//   Bird bird = Bird();
//   bird.fly();
//   Airplane airplane = Airplane();
//   airplane.fly();
// }
//--------------------------------------------------------------------------------

// Question 3: Movable + Color Mixin
// Description:
// Mixin:
// Movable → method: move() print করবে "Moving..."
// Colorful → property: color এবং method: showColor() print করবে color
// Car class বানাও যা দুইটি mixin use করবে।
// Main function এ Car object তৈরি করে move() ও showColor() call করো।
//--------------------------------------------------------------------------------
// mixin Movable{
//   void move() => print("Moving");
// }
//
// mixin Colorful{
//   String? color;
//
//   void showColor() => print(color);
// }
//
// class Car with Movable, Colorful{
//
// }
//
// void main(){
//   Car car = Car();
//   car.color = "Red";
//   car.move();
//   car.showColor();
// }
//--------------------------------------------------------------------------------

// Question 4: Authentication Mixin
// Description:
// Mixin: Authentication
// Method: login(String username, String password) → print করবে "User $username logged in"
// Class: Admin mixin use করবে।
// Main function এ Admin object তৈরি করে login() call করো।
//--------------------------------------------------------------------------------
// mixin Authentication{
//   void login(String userName, String password) => print("User $userName logged in");
// }
// class Admin with Authentication{
//
// }
//
// void main(){
//   Admin admin = Admin();
//   admin.login("Saikat", "556637");
// }
// -------------------------------------------------------------------------------

// Question 5: Payment + Discount Mixin
// Description:
// Mixin:
// Payment → method: pay(double amount) print করবে "Paid $amount"
// Discount → method: applyDiscount(double amount) return করবে discounted amount (10% off)
// Class: OnlineShop mixin use করবে।
// Main function এ OnlineShop object দিয়ে pay() ও applyDiscount() ব্যবহার করো।
// ----------------------------------------------------------------------------------
// mixin Payment{
//   void pay(double amount) => print("Paid $amount");
// }
//
// mixin Discount{
//   String applyDiscount(double amount) {
//     return "Discount Amount (10% off)";
//   }
// }
//
// class OnlineShop with Payment, Discount{
//
// }
//
// void main(){
//   OnlineShop onlineShop = OnlineShop();
//   onlineShop.pay(1000);
//   print(onlineShop.applyDiscount(100));
// }




















