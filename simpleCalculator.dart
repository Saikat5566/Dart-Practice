import 'dart:io';
void main() {
  print("Enter First Number :");
  int num = int.parse(stdin.readLineSync()!);

  print("Enter Second Number :");
  int num2 = int.parse(stdin.readLineSync()!);

  print("+,-,*,/,%");
  String operator = stdin.readLineSync()!;

  if(operator == "+"){
    print(num+num2);
  }
  else if(operator == "-"){
    print(num-num2);
  }
  else if(operator == "*"){
    print(num*num2);
  }
  else if(operator == "/"){
    if(num == 0 || num2 == 0){
      print("Can't Divided by 0");
    }
    else{
      print(num/num2);
    }
  }
  else if(operator == "%"){
    print(num%num2);
  }
  else{
    print("Invalid");
  }
}

