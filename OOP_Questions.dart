// Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.

// class Laptop{
//   int? id;
//   String? name;
//   int? ram;
//
//   void show(){
//     print("ID: $id \nName: $name \nRam : $ram");
//   }
// }
//
// void main(){
//   Laptop laptop = Laptop();
//   laptop.id = 01;
//   laptop.name = "Lenovo";
//   laptop.ram = 16;
//
//   laptop.show();
// }

// Write a dart program to create a class House with properties [id, name, price].
// Create a constructor of it and create 3 objects of it. Add them to the list and print all details.

// class House{
//   int? id;
//   String? name;
//   double? price;
//
//   House(this.id, this.name, this.price);
//
//   void show(){
//     print("ID: $id \nName: $name \nPrice : $price");
//   }
// }
//
// void main(){
//   House house = House(01, "Villa", 3000000.00);
//
//   house.show();
// }

// Write a dart program to create an enum class for gender [male, female, others] and print all values.

// enum Gender { male, female, others }
//
// class Person{
//   String? name;
//   Gender? gender;
//
//   Person(this.name, this.gender);
//
//   void show(){
//     print("Name is : $name \nGender : $gender");
//   }
// }
//
// void main(){
//   Person person = Person("Saikat", Gender.male);
//   person.show();
//
//   Person person2 = Person("Ridhi", Gender.female);
//   person2.show();
// }

// Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal.
// Add new properties sound in String. Create an object of a Cat and print all details.

// class Animal {
//   int? id;
//   String? name;
//   String? color;
//
//   Animal(this.id, this.name, this.color);
// }
//
// class Cat extends Animal{
//
//   Cat(int id, String name, String color) : super (id, name, color);
//
//   void show(){
//     print("ID : $id \nName : $name \nColor : $color");
// }
// }
//
// void main(){
//   Cat cat = Cat(01, "Kitty", "White");
//   cat.show();
// }


// Write a dart program to create a class Camera with private properties [id, brand, color, price].
// Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

// class Camera{
//   int _id;
//   String _brand;
//   String _color;
//   double _price;
//
//   Camera(this._id, this._brand, this._color, this._price);
//
//   int getId(){
//     return _id;
//   }
//
//   String getBrand(){
//     return _brand;
//   }
//
//   String getColor(){
//     return _color;
//   }
//
//   double getPrice(){
//     return _price;
//   }
//
//   void setId(int id){
//     this._id = id;
//   }
//
//   void setBrand(String brand){
//     this._brand = brand;
//   }
//
//   void setColor(String color){
//     this._color = color;
//   }
//
//   void setPrice(double price){
//     this._price = price;
//   }
//
//
//   void show(){
//     print("ID : $_id \nBrand : $_brand \nColor : $_color \nPrice : $_price");
//   }
// }
//
// void main(){
//   Camera camera = Camera(01, "Canon", "Black", 30000);
//   camera.show();
// }


// Create an interface called Bottle and add a method to it called open().
// Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”.
// Add a factory constructor to Bottle and return the object of CokeBottle.
// Instantiate CokeBottle using the factory constructor and call the open() on the object.


// abstract class Bottle{
//   void open();
//
//   factory Bottle (){
//     return CokeBottle();
//   }
// }
//
// class CokeBottle implements Bottle{
//   @override
//   void open() {
//     // TODO: implement open
//     print("Coke bottle is opened");
//   }
// }
//
// void main(){
//   Bottle bottle = Bottle();
//   bottle.open();
// }





















