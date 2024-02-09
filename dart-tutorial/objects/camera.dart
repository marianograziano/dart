class Camera {
  String? name;
  String? color ;
  double? megapixeles;

    void display () {
    
    print('Nombre: $name');
    print('Color: $color');
    print('Cantidad MegaPixeles: $megapixeles');
  }


}

void main(List<String> args) {
  Camera camera1 = Camera();
  camera1.name = 'Canon';
  camera1.color = 'red';
  camera1.megapixeles = 21;
  camera1.display();

  Camera camera2 = Camera();
  camera2.name = 'Kodak';
  camera2.color = 'blue';
  camera2.megapixeles = 12;
  camera2.display();

}