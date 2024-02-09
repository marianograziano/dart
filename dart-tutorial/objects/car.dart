class Car {
  String? color;
  String? name;
  int? seats; 

    void display () {
    print('Color: $color');
    print('Name: $name');
    print('Seats: $seats');
  }
   
}

void main () {
  Car car1 = Car();
  car1.name = 'BMW';
  car1.seats = 2;
  car1.color = 'red';
  car1.display();

  Car car2 = Car(); 
  car2.name = 'Mercedes';
  car2.seats = 5;
  car2.color = 'blue';
  car2.display();
}