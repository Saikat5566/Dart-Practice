//ধাপ – ১ : Abstract Class (Base)
//Account নামে একটা abstract class বানাও।
//প্রাইভেট প্রপার্টি থাকবে _accountNumber, _balance।
//Constructor দিয়ে মান সেট করতে হবে।
//Getter/Setter ব্যবহার করতে হবে।
//একটা abstract method calculateInterest() থাকবে।
//একটা displayInfo() মেথড বানাতে হবে যেখানে account number ও balance দেখাবে।

abstract class Account{
  int? _accountNumber;
  double? _balance;

  Account(this._accountNumber, this._balance);

  int getAccountNumber(){
    return _accountNumber!;
  }
  double getBalance(){
    return _balance!;
  }

  void setAccountNumber(int accountNumber){
    this._accountNumber = accountNumber;
  }
  void setBalance(double balance){
    this._balance = balance;
  }

  void calculateInterest();

  void displayInfo(){
    print("Account Number is $_accountNumber");
    print("Balance is $_balance");
  }
}

class SavingsAccount extends Account{
  double? _interestRate;

  SavingsAccount(this._interestRate, int accountNumber, double balance): super(accountNumber, balance);

  double getInterestRate(){
    return _interestRate!;
  }

  void setInterestRate(double interestRate){
    this._interestRate = interestRate;
  }

  void calculateInterest() {
    print("Interest = ${(_balance!*_interestRate!)/100}");
    print("Interest Rate is $_interestRate");
  }
}

class PremiumSavingsAccount extends Account{
  double? _bonusRate;
  double? _interestRate;

  PremiumSavingsAccount(this._bonusRate, this._interestRate, int accountNumber, double balance): super(accountNumber, balance);

  double getBonusRate(){
    return _bonusRate!;
  }
  double getInterestRate(){
    return _interestRate!;
  }

  void setBonusRate(double bonusRate){
    this._bonusRate = bonusRate;
  }
  void setInterestRate(double interestRate){
    this._interestRate = interestRate;
  }

  void calculateInterest(){
    print("Interest = ${(_balance!*_interestRate!)/100}");
    print("Bonus = ${(_balance!*_bonusRate!)/100}");
    print("Total Interest = ${(_balance!*_interestRate!)/100 + (_balance!*_bonusRate!)/100}");
    print("Interest Rate is $_interestRate \nBonus Rate is $_bonusRate");
  }

}

class CurrentAccount extends Account{
  double? _overdraftLimit;

  CurrentAccount(this._overdraftLimit, int accountNumber, double balance): super(accountNumber, balance);

  double getOverdraftLimit(){
    return _overdraftLimit!;
  }

  void setOverdraftLimit(double overdraftLimit){
    this._overdraftLimit = overdraftLimit;
  }

  void calculateInterest(){
    print("Interest = 0");
    print("Overdraft limit $_overdraftLimit");
  }
}

void main(){
  SavingsAccount savingsAccount = SavingsAccount(10, 660683, 200000);
  savingsAccount.displayInfo();
  savingsAccount.calculateInterest();
  print("------------------------------------------------------------");

  PremiumSavingsAccount premiumSavingsAccount = PremiumSavingsAccount(5, 7, 602415, 300000);
  premiumSavingsAccount.displayInfo();
  premiumSavingsAccount.calculateInterest();
  print("------------------------------------------------------------");

  CurrentAccount currentAccount = CurrentAccount(50000, 62540, 500000);
  currentAccount.displayInfo();
  currentAccount.calculateInterest();
}

