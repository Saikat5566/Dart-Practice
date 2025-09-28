import 'dart:math';

abstract class Shape{
  String? _color;

  Shape(this._color);

  String getColor(){
    return _color!;
  }

  void setColor(String color){
    this._color = color;
  }

  void area();

  void displayInfo(){
    print(_color);
  }
}

class Rectangle extends Shape {
  double? _length;
  double? _width;

  Rectangle(this._length, this._width, String color) : super(color);

  double getLength(){
    return _length!;
  }
  double getWidth(){
    return _width!;
  }

  void setLength(double length){
    this._length = length;
  }
  void setWidth(double width){
    this._width = width;
  }

  void area(){
    print("Rectangle Area = ${_length!*_width!}");
  }

  void displayInfo(){
    print("Rectangle color is $_color \nLength = $_length \nWidth = $_width");
  }
}

class Circle extends Shape{
  double? _radius;

  Circle(this._radius, String color): super(color);

  double getRadius(){
    return _radius!;
  }

  void setRadius(double radius){
    this._radius = radius;
  }

  void area(){
    print("Circle's Area = ${pi*_radius!*_radius!}");
  }

  void displayInfo(){
    print("Circle's color is $_color \nRadius = $_radius");
  }
}

void main(){
  Rectangle rectangle = Rectangle(10, 5, "Red");
  rectangle.displayInfo();
  rectangle.area();
  
  Circle circle = Circle(7, "Blue");
  circle.displayInfo();
  circle.area();
}