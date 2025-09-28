// Question 3: Payment System
// 👉 একটা Payment interface বানাও যেখানে:
// Method থাকবে: pay(double amount).
// CreditCardPayment আর PaypalPayment ক্লাস Payment implement করবে।
// Main function এ দুই ক্লাস ব্যবহার করে ১০০০ টাকা payment করো।

abstract class Payment{
  void pay(double amount);
}

class CreditCardPayment implements Payment{
  void pay(double amount){
    print("Credit Card Payment is $amount");
  }
}

class PaypalPayment implements Payment{
  void pay(double amount){
   print("Paypal Payment is $amount");
  }
}

void main(){
  CreditCardPayment creditCardPayment = CreditCardPayment();
  creditCardPayment.pay(1000);

  PaypalPayment paypalPayment = PaypalPayment();
  paypalPayment.pay(1000);
}