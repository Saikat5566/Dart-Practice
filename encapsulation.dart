class Student {
  var _name;
  var _marks;

  String getName() {
    return _name;
  }
  int getMarks(){
    return _marks;
  }

  void setName(String name){
    this._name = name;
  }
  void setAge(int marks){
    this._marks = marks;
  }

  void show() {
    print("Name is $_name");
    print("Marks is $_marks");
  }
}

void main(){
  Student student = Student();
  student._marks = 80;
  student._name = "Saikat";
  student.show();

}



