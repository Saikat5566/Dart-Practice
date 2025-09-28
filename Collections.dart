import 'dart:ffi';

void main(){

  List <int> numbers = [10,7,15,20,38,46,10,15,38];
  Set <int> num = numbers.toSet();

  print(num);

  for(int a in num){
    if(a%2==0){
      print(a);
    }
  }

}


