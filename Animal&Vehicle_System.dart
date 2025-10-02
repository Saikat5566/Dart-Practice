// Enum:
// AnimalType — Dog, Cat, Bird
// VehicleType — Car, Bike, Truck

enum AnimalType {Dog, Cat, Bird}
enum VehicleType {Car, Bike, Truck}

// Step 2: Interface বানাও
// SoundMaker নামে একটি interface বানাও।
// Method থাকবে: makeSound()

abstract class SoundMaker {
  void makeSound();
}

// Step 3: Abstract Class বানাও
// LivingBeing abstract class বানাও।
// Private property _name থাকবে।
// Constructor দিয়ে _name সেট করো।
// Abstract method describe() রাখো।
// Getter/Setter দিয়ে _name access করো।

abstract class LivingBeing {
  String _name;

  LivingBeing(this._name);

  void describe();

  String getName (){
    return _name;
  }

  void setName(String name){
    this._name = name;
  }
}

// Step 4: Animal Class বানাও (Inheritance + Interface)
// Animal class তৈরি করো, যা LivingBeing extend করবে এবং SoundMaker implement করবে।
// Properties: type (AnimalType), _age (private)
// Constructor দিয়ে type, name, age set করো।
// Getter/Setter দিয়ে _age access করো।
// describe() override করো।
// makeSound() implement করো (switch case use করে)।

class Animal extends LivingBeing implements SoundMaker{
  AnimalType type;
  int _age;

  Animal(String name, this.type, this._age): super(name);

  int getAge(){
    return _age;
  }

  void setAge(int age){
    this._age = age;
  }

  @override
  void describe() {
    print("Name : $_name \nType : ${type.name} \nAge : $_age Year");
  }

  @override
  void makeSound() {
    switch (type){
      case AnimalType.Dog:
        print("Ghew Ghew");
        break;
      case AnimalType.Cat:
        print("Meow Meow");
        break;
      case AnimalType.Bird:
        print("Chrip Chrip");
        break;
    }
  }
}

// Step 5: Mixin বানাও
// Flyable mixin তৈরি করো।
// Method: fly()

mixin Flyable{
  void fly(){
    print("I can Fly");
  }
}

// Step 6: Bird Class বানাও (Mixin ব্যবহার)
// Bird class বানাও, যা Animal extend করবে এবং Flyable use করবে।
// Constructor: name ও age নেবে।

class Bird extends Animal with Flyable{
  Bird(String name, int age): super(name, AnimalType.Bird, age);
}

// Step 7: Vehicle Class বানাও
// Vehicle class তৈরি করো।
// Properties: type (VehicleType), brand
// Constructor দিয়ে set করো।
// Method: describe()

class Vehicle{
  VehicleType type;
  String brand;

  Vehicle(this.brand, this.type);

  void describe(){
    print("Type : ${type.name} \nBrand : $brand");
  }
}

// Step 8: Main Function এ Object তৈরি
// Animals: Dog, Cat, Bird
// Vehicles: Car, Bike, Truck

void main (){
  Animal dog = Animal("Simbha", AnimalType.Dog, 3);
  Animal cat = Animal("Kitti", AnimalType.Cat, 2);
  Animal bird = Animal("Mithu", AnimalType.Bird, 1);
  
  print("Animals -------------------------------------------");
  
  dog.describe();
  dog.makeSound();
  
  cat.describe();
  cat.makeSound();
  
  bird.describe();
  bird.makeSound();
  
  Vehicle car = Vehicle("TOYOTA", VehicleType.Car);
  Vehicle bike = Vehicle("HARLEY DAVIDSON", VehicleType.Bike);
  Vehicle truck = Vehicle("ASHOK LEY LAND", VehicleType.Truck);

  print("Vehicles --------------------------------------------");       

  car.describe();
  bike.describe();
  truck.describe();
}