
abstract class SalaryReport{
  void printSalary();
}

// Step 2: Base Class
// Employee class বানাও।
// Private properties:
// _name (String)
// _basicSalary (double)
// Constructor দিয়ে name এবং basicSalary set করবে।
// Getter এবং Setter ব্যবহার করবে।

class Employee{
  String? _name;
  double? _basicSalary;

  Employee(this._name, this._basicSalary);

  String getName(){
    return _name!;
  }
  double getSalary(){
    return _basicSalary!;
  }

  void setName(String name) => _name = name;
  void setSalary(double basicSalary) => _basicSalary = basicSalary;
}

// Step 3: Derived Class
// Manager class বানাও।
// Employee class থেকে inherit করবে।
// Extra property:
// bonus (double)
// Constructor দিয়ে name, basicSalary, bonus set করবে।
//  Interface implement করবে (SalaryReport)
// printSalary() method:
// Total salary = basicSalary + bonus
// Print employee name, basicSalary, bonus, total salary
// Condition: যদি total salary ≥ 100000 → “High Salary” print করবে, অন্যথায় “Normal Salary”

class Manager extends Employee implements SalaryReport{
  double? bonus;

  Manager(String name, double basicSalary, this.bonus): super(name, basicSalary);

  void printSalary(){
    double totalSalary = _basicSalary!+bonus!;
    print("Manager Name is $_name \nBasic Salary is $_basicSalary \nBonus is $bonus \nTotal Salary is $totalSalary");

    if(totalSalary >= 100000){
      print("High Salary");
    }
    else{
      print("Normal Salary");
    }
  }
}

// Step 4: Loop & Function
// একটি function বানাও printAllSalaries()
// Input: List<Manager>
// Loop ব্যবহার করে সব manager-এর salary print করবে।
// প্রতিটি manager-এর জন্য printSalary() call করবে।

void printAllSalaries(List<Manager> details){
  for(var salary in details){
    salary.printSalary();
  }
}

// Step 5: Main Function
// Main function-এ 2-3টা Manager object বানাও।
// Objects List-এ রাখো।
// printAllSalaries() function call করো।
//  Polymorphism দেখানোর জন্য SalaryReport type use করে object call করতে পারো।

void main(){
  Manager manager = Manager("Abir", 120000, 50000);
  Manager manager2 = Manager("Hasan", 80000, 20000);
  Manager manager3 = Manager("Saikat", 70000, 15000);

  List<Manager> details = [manager, manager2, manager3];
  printAllSalaries(details);
}

























