// Requirements (Step by Step)
// Step 1: Interface
// Interface বানাও Printable নামে।
// Method:
// void printDetails();
// সমস্ত items এবং users এই interface implement করবে।

abstract class Printable{
  void printDetails();
}

// Step 2: Base Class
// LibraryItem class বানাও।
// Private properties:
// _title (String) _id (int)
// Constructor দিয়ে set করবে।
// Getter এবং Setter বানাও।

class LibraryItem{
  String? _title;
  int? _id;

  LibraryItem(this._title, this._id);

  String getTitle(){
    return _title!;
  }
  int getId(){
    return _id!;
  }

  void setTitle(String title) => _title = title;
  void setId(int id) => _id = id;

  void printDetails(){}
}

// Step 3: Derived Classes
// Book class (extends LibraryItem & implements Printable)
// Extra property: author (String)
// printDetails() → print title, id, author
// Magazine class (extends LibraryItem & implements Printable)
// Extra property: issueNumber (int)
// printDetails() → print title, id, issueNumber

class Book extends LibraryItem implements Printable{
  String? author;
  Book(String title, int id, this.author): super(title, id);

  @override
  void printDetails() {
    // TODO: implement printDetails
    print("Book name is $_title \nBook ID is $_id \nAuthor is $author");
  }
}

class Magazine extends LibraryItem implements Printable{
  int? issueNumber;
  Magazine(String title, int id, this.issueNumber):super(title, id);

  @override
  void printDetails() {
    // TODO: implement printDetails
    print("Magazine Title is $_title \nMagazine ID is $_id \nIssue Number is $issueNumber");
  }
}

// Step 4: User Class
// User class বানাও।
// Private properties:
// _name (String) _userId (int)
// _borrowedItems (List<LibraryItem>)
// Methods:
// borrowItem(LibraryItem item) → add item to _borrowedItems
// returnItem(LibraryItem item) → remove item from _borrowedItems
// printDetails() → print user info + all borrowed items

class User implements Printable{
  String? _name;
  int? _userId;
  List<LibraryItem>? _borrowItems;

  User(this._name, this._userId, this._borrowItems);

  void borrowItem(LibraryItem item){
    _borrowItems?.add(item);
    print("$_name borrowed ${item.getTitle()}");
  }
  
  void returnItem(LibraryItem item){
    _borrowItems?.remove(item);
    print("$_name returned ${item.getTitle()}");
  }

  @override
  void printDetails() {
    print("User Name: $_name");
    print("User ID: $_userId");
    print("Borrowed Items:");
    if (_borrowItems!.isEmpty) {
      print("No items borrowed.");
    } else {
      for (var item in _borrowItems!) {
        item.printDetails(); // LibraryItem implements Printable
      }
    }
    print("-------------------------");
  }
}

