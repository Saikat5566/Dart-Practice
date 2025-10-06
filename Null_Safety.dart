// Question 1: Student Info
// একটা Student ক্লাস বানাও যার প্রপার্টি থাকবে:
// String? name
// int? age
// 👉 displayInfo() মেথডে name null হলে "Unknown" আর age null হলে "Not given" দেখাবে।
// Hint: ?? অপারেটর ব্যবহার করো।

// class Student{
//   String? name;
//   int? age;
//
//   void displayInfo(){
//     print("Name : ${name ?? "Unknown"}");
//     print("Age : ${age ?? "Not given"}");
//   }
// }
//
// void main(){
//   Student student = Student();
//   student.name = "Saikat";
//   student.age = 22;
//   student.displayInfo();
//
//   Student student2 = Student();
//   student2.displayInfo();
// }

// Question 2: Bank Account
// একটা BankAccount ক্লাস বানাও:
// String accountHolder (non-nullable)
// double? balance
// 👉 deposit(double amount) মেথড ব্যালেন্সে টাকা যোগ করবে।
// 👉 withdraw(double amount) মেথড ব্যালেন্স চেক করে টাকা তুলবে, কিন্তু যদি balance null হয়, তাহলে “Account not active” প্রিন্ট করবে।
// Hint: null check (if (balance != null)) ব্যবহার করো।

// class BankAccount{
//   String accountHolder;
//   double? balance;
//
//   BankAccount(this.accountHolder, this.balance);
//
//   Object deposit(double amount){
//
//     if(balance != null){
//       return amount = amount+balance!;
//     }
//     else{
//       return "Try Again";
//     }
//   }
//
//   Object withdraw(double amount){
//     if(balance != null){
//       return amount = balance!-amount;
//     }
//     else{
//       return "Try Again";
//     }
//   }
//
//   void display(){
//     print("Account Holder Name : $accountHolder \nBalance : $balance");
//     print("After Deposit Total Amount : ${deposit(20000)}");
//     print("After Withdraw Total Amount : ${withdraw(5000)}");
//   }
// }
//
// void main(){
//   BankAccount bankAccount = BankAccount("Abir", 100000);
//   bankAccount.display();
//
//   BankAccount bankAccount2 = BankAccount("Saikat", null);
//   bankAccount2.display();
// }

// Question 3: Car Class
// একটা Car ক্লাস বানাও:
// String model
// String? owner
// 👉 printDetails() মেথডে null-aware অপারেটর (?.) দিয়ে owner-এর নাম প্রিন্ট করো।
// যদি owner null হয়, “No owner assigned yet” প্রিন্ট করবে।

// class Car{
//   String model;
//   String? owner;
//   Car( this.model, this.owner);
//   void printDetails(){
//     print(model);
//     print("Owner : ${owner ?? "No Owner assigned yet"}");
//   }
// }
//
// void main(){
//   Car car = Car("model", null);
//   car.printDetails();
// }

// Question 4: User Profile
//একটা User ক্লাস বানাও:
//String? username
//String? email
//👉 printProfile() মেথডে:
//যদি username null হয়, তাহলে "Guest User" প্রিন্ট করবে।
//যদি email null হয়, তাহলে "No email provided" প্রিন্ট করবে।
//👉 ! (null assertion operator) ব্যবহার করে দেখাও কিভাবে ভুলভাবে null মান অ্যাক্সেস করলে error হয়।

// class User{
//   String? username;
//   String? email;
//
//   void printProfile(){
//     print("User Name : ${username ?? "Guest User"}");
//     print("Email : ${email ?? "No email Provided"}");
//   }
// }
//
// void main(){
//   User user = User();
//   user.username = "Saikat55";
//   user.email = "me.abirhasansaikat0024@gmail.com";
//   user.printProfile();
// }

























