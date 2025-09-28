class Pc{
  String? processor;
  String? motherboard;
  String? ram;
  String? storage; 

  Pc(this.processor , this.motherboard , this.ram, this.storage);
}

class Config extends Pc{
  String? monitor;
  Config(this.monitor, String processor, String motherboard, String ram, String storage) : super('processor', 'motherboard', 'ram', 'storage');

  void show(){
   print("Monitor Name is $monitor");
   print("Processor Name is ${super.processor}");
   print("Motherboard Name is ${super.motherboard}");
   print("Ram is ${super.ram}");
   print("Storage is ${super.storage}");
  }
}

void main(){
  Config con = Config("HP 22 Inch","Ryzen 7 8700", "MSI M510", "32 GB", "2TB Nvme SSD");
  con.show();
}