class BankAccount {
  double _balance = 0; // প্রাইভেট ভ্যারিয়েবল

  // Getter -> balance দেখাবে
  double getBalance() {
    return _balance;
  }

  // Deposit method
  void setDeposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
      print("Total Balance: $_balance");
    } else {
      print("Invalid Deposit Amount");
    }
  }

  // Withdraw method
  void setWithdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
      print("Total Balance: $_balance");
    } else {
      print("Insufficient Balance");
    }
  }

  // Show current balance
  void show() {
    print("Current Balance: $_balance");
  }
}

void main() {
  BankAccount bankAccount = BankAccount();

  bankAccount.setDeposit(5000);    // Deposit 5000
  bankAccount.setWithdraw(2000);   // Withdraw 2000
  bankAccount.setWithdraw(4000);   // Withdraw more than balance
  print("Balance using getter: ${bankAccount.getBalance()}");
  bankAccount.show();               // Show balance
}
