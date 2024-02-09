class Bicycle {
  String? color;
  int? size;
  int? currentSpeed; 

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display () {
    print('Color: $color');
    print('Size: $size');
    print('Current Speed: $currentSpeed');
  }
}

void main () {
  Bicycle bicycle = Bicycle();
  bicycle.color = 'red';
  bicycle.size = 26;
  bicycle.currentSpeed = 20;
  bicycle.changeGear(12);
  bicycle.display();
}