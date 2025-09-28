void main() {

  List<String> fruits = ["apple", "banana", "mango", "orange", "grape"];
  String longest = fruits[0];
  String smallest = fruits[0];

  for(String a in fruits){
    if(a.length>longest.length){
      longest = a;
    }
    else if(a.length<smallest.length){
      smallest = a;
    }
  }
  print(fruits);
  print(longest);
  print(smallest);



  List<int> numbers = [2, 4, 6, 8, 10];
  List<int> newNumbers = [];

  for(int a in numbers){
    newNumbers.add(a*2);

    }
  print(numbers);
  print(newNumbers);


  List<int> numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> primeNumbers = [];

  for (int a in numbers2) {
    if (isPrime(a)) {
      primeNumbers.add(a);
    }
  }
  print(numbers2);
  print(primeNumbers);
}


  bool isPrime(int a){
    if( a < 2) return true ;
    if(a%2==0){
      return false;
    }
    else {
      return true;
    }
  }