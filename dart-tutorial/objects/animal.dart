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


void main () {
  Animal animal = Animal(); 
  animal.name = 'Lion';
  animal.numberOfLegs = 4; 
  animal.lifeSpan = 10;
  animal.display();

}