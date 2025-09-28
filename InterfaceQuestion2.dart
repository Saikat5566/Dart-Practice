// ✅ Question 2: Animal Interface
// 👉 একটা Animal interface বানাও যেখানে:
// Method থাকবে: sound().
// Dog, Cat এবং Cow ক্লাস Animal implement করবে।
// Main function এ সবগুলোর object বানিয়ে তাদের আলাদা আলাদা sound দেখাও।

abstract class Animal{
  String sound();
}

class Dog implements Animal{
  String sound(){
    return "Ghew Ghew";
  }
}

class Cat implements Animal{
  String sound(){
    return "Mew Mew";
  }
}

class Cow implements Animal{
  String sound(){
    return "Hamba";
  }
}

void main(){
  Dog dog = Dog();
  print("Dog's Sound is ${dog.sound()}");

  Cat cat = Cat();
  print("Cat's sound is ${cat.sound()}");

  Cow cow = Cow();
  print("Cow's sound is ${cow.sound()}");
}