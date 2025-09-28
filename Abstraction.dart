abstract class Students{
    void junior();
    void senior();

}


class FirstSemster extends Students{

  void junior(){
    print("I'm junior");
  }


  void senior() {
    // TODO: implement senior
  }

}
class SecondSemster extends Students{

  void junior(){
    print("I'm junior");
  }


  void senior(){
    print("Junior");
  }
}

void main(){
  FirstSemster student = FirstSemster();
  student.junior();
  SecondSemster students = SecondSemster();
  students.junior();
}
