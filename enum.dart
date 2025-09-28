enum Gender {male,female,others}

class Person{

  String? name;
  Gender? gender;

  Person(this.name,this.gender);

  void show(){

    print("Name is $name");
    print("Gender is $gender");
}
}

void main(){

  Person p = Person("Abir Hasan", Gender.male);
  Person person = Person("Sabikunnahar Mitu", Gender.female);

  p.show();
  person.show();
}