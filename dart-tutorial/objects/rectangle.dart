class Rectangle {
  double? length; 
  double? breadth;

  double area() {
    return length! * breadth!;
  }



}

void main(List<String> args) {
  Rectangle rectangle1 = Rectangle();
  rectangle1.breadth = 10;
  rectangle1.length = 20;
  print('El area del rectangulo es ${rectangle1.area()}');
}
