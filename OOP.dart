class Camera{
  String? name;
  String? color;
  String? megapixel;

  void display(){
    print("The camera name is $name");
    print("Color of this camera is $color");
    print("It has $megapixel camera");
  }
}

void main(){
  Camera camera = Camera();
  camera.name = "Nikon";
  camera.color = "Black";
  camera.megapixel = "100 Megapixel";
  camera.display();

  Camera camera2 = Camera();
  camera2.name = "Canon";
  camera2.color = "Black";
  camera2.megapixel = "130 Megapixel";
  camera2.display();

}