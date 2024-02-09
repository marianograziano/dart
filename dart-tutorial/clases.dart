class Classname {

}

class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print('Animal name $name');
    print('Animal legs $numberOfLegs');
    print('Life Span $lifeSpan');
    }

  
}

class Person {
  String? name;
  int? age; 
  String? phone;
  bool? isMarried;

  void displayInfo() {
    print('Name $name');
    print('Age $age');
    print('Phone $phone');
    print('Married $isMarried');

  }

}

class Area {
  double? length; 
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }

}

class Book {
  String? author;
  String? name; 
  double? prize;

    void display() {
    print('Nombre $name');
    print('Author $author');
    print('Price $prize');
    }

  
}