// class Area{
//   final double length;
//   final double width;
//   final double area;
//
//   const Area._internal(this.length, this.width) : area = length * width;
//
//   factory Area (double length, double width){
//     if(length < 0 || width < 0){
//       throw Exception("Area Can't be Negative");
//     }
//     else{
//       return Area._internal(length , width);
//     }
//   }
//
//   void show(){
//     print("Area is $area");
//   }
// }
//
// void main(){
//   Area area = Area(150, 250);
//   area.show();
// }

// class Person{
//   String name;
//   int id;
//
//   Person(this.name, this.id);
//
//   factory Person.FromMap(Map<String , Object>map){
//     final name = map["name"] as String;
//     final id = map["id"] as int;
//
//     return Person(name , id);
//   }
//
//   void show(){
//     print("Name is $name and Id is $id");
//   }
// }
//
// void main(){
//   Person person = Person.FromMap({"name": "Saikat", "id": 660683 });
//   person.show();
// }

// enum ShapeType {circle , rectangle}
//
// class Circle implements Shape{
//   void draw(){
//     print("This is a Circle");
//   }
// }
//
// class Rectangle implements Shape{
//   void draw(){
//     print("This is a Rectangle");
//   }
// }
//
// abstract class Shape {
//   factory Shape (ShapeType type){
//     switch(type){
//       case ShapeType.circle:
//         return Circle();
//       case ShapeType.rectangle:
//         return Rectangle();
//       default :   throw "Invalid";
//     }
//   }
//
//   void draw();
// }
//
// void main(){
//   Shape shape = Shape(ShapeType.circle);
//   Shape shape2 =Shape(ShapeType.rectangle);
//
//   shape.draw();
//   shape2.draw();
// }
//
































