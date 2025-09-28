// ✅ Question 1: Shape Interface
// 👉 একটা Shape interface বানাও যেখানে:
// area() আর perimeter() method থাকবে।
// Rectangle ও Circle ক্লাস এই interface implement করবে।
// Main function এ একটা rectangle আর একটা circle এর object বানিয়ে তাদের area আর perimeter দেখাও।



import 'dart:math';

abstract class Shape{
  double area();
  double perimeter();
}

class Rectangle implements Shape {
  double? length;
  double? width;

  Rectangle(this.length , this.width);

  double area(){
    return length!*width!;
  }

  double perimeter(){
    return 2*(length!+width!);
  }
}

class Circle implements Shape{
  double? r;

  Circle(this.r);

  double area(){
    return pi*r!*r!;
  }

  double perimeter(){
    return 2*pi*r!;
  }
}

void main(){
  Rectangle rectangle = Rectangle(10, 20);
  print("Rectangle Area = ${rectangle.area()}");
  print("Rectangle Perimeter = ${rectangle.perimeter()}");

  Circle circle = Circle(10);
  print("Circle Area = ${circle.area()}");
  print("Circle Perimeter = ${circle.perimeter()}");
}