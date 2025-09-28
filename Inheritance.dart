class Father{
  String? name;
  int? age;
  int? property;

  Father(this.name, this.age, this.property);
  void show(){

    print("Father's name is $name");
    print("Father's age is $age;");
    print("Total property $property corer");

  }
}

class Son extends Father{

  String? name ;

  Son(this.name , int age, int property) : super(name, age, property);

  void show(){
    print("Son's name is $name");
    print("After 25 year son will be $age year old like father");
    print("After father son will take over father's $property corer property");
  }
}

void main(){
  Father father = Father("Akbar Ali", 47, 1000);

  father.show();

  Son son = Son("Saikat", 47, 1000);

  son.show();


}