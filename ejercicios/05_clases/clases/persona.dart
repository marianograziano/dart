class Persona {
  // Campos o Propiedades
  String? nombre; 
  int? edad; 
  String _bio = "esta es mi bio"; 

  // Gets y Sets
  // String get bio {
  //   return _bio.toUpperCase();
  // }
  String get bio => _bio.toUpperCase();
  // set bio(String texto) {
  //   _bio = texto;
  // }
  set bio (String texto) => _bio = texto; 
  // Constructores
  // Persona(int edad, String nombre) {
  //   //print('Constructor');
  //   this.edad = edad; 
  //   this.nombre = nombre; 
  //   // _bio = 'Hola desde el constructor';
  // }
Persona({ this.edad = 0 , this.nombre = 'Sin Nombre'});

Persona.persona30(this.nombre){
  this.edad = 30;
  }

  // metodos
  @override // deecorador
  String toString() => '$nombre - $edad - $_bio';

  }
