import 'dart:io';
void main() {
  List<String> number = stdin.readLineSync()!.split(" ");
  int num = int.parse(number[0]);

  List<String> operators = stdin.readLineSync()!.split(" ");
  String operator = operators[0];

  List<String> number2 = stdin.readLineSync()!.split(" ");
  int num2 = int.parse(number2[1]);

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

