// Vehicle নামে একটা parent class বানাও।
// প্রাইভেট প্রপার্টি: _brand এবং _model
// Constructor দিয়ে মান সেট করতে হবে।
// Getter/Setter দিয়ে ডাটা কন্ট্রোল করতে হবে।
// Car নামে একটা child class বানাও যা Vehicle থেকে inherit করবে।
// প্রাইভেট প্রপার্টি থাকবে _seats।
// Constructor এ super() ব্যবহার করে parent এর কন্সট্রাক্টর কল করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// Bus নামে আরেকটা child class বানাও।
// প্রাইভেট প্রপার্টি থাকবে _capacity।
// Constructor এ super() ব্যবহার করে Vehicle এর কন্সট্রাক্টর কল করতে হবে।
// Getter/Setter ব্যবহার করতে হবে।
// main() এ –
// একটি Car অবজেক্ট বানাও এবং সেটার brand, model, seats প্রিন্ট করো।
// একটি Bus অবজেক্ট বানাও এবং সেটার brand, model, capacity প্রিন্ট করো।

class Vehicle{
  String? _brand;
  String? _model;

  Vehicle(this._brand,this._model);

  String getBrand(){
    return _brand!;
  }
  String getModel(){
    return _model!;
  }

  void setBrand(String brand){
    this._brand = brand;
  }
  void setModel(String model){
    this._model = model;
  }
}

class Car extends Vehicle{
  int? _seats;

  Car(this._seats, String brand, String model) : super(brand, model);

  int getSeats(){
    return _seats!;
  }

  void setSeats(int seats){
    this._seats = seats;
  }

  void show(){
    print("Brand is $_brand");
    print("Model is $_model");
    print("Seats $_seats");
  }
}

class Bus extends Vehicle{
  int? _capacity;

  Bus(this._capacity, String brand, String model): super(brand, model);

  int getCapacity(){
    return _capacity!;
  }

  void setCapacity(int capacity){
    this._capacity = capacity;
  }

  void show(){
    print("Brand is $_brand");
    print("Model is $_model");
    print("Capacity is $_capacity");
  }
}

void main(){
  Car car =Car(5, "Audi", "M23H");
  car.show();
  Bus bus = Bus(50, "Toyota", "2H548B");
  bus.show();
}