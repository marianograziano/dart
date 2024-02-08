main () {
  int a = 10; 
  int? b; 

  String respuesta = a >9 ? 'A es mayor a nueve ' : 'A es menor a nueve';

  print(respuesta);
  
 // b ??= 20; // asignar un valor si la variable es null.

int d = b ?? a; 
print(b);
print(d);
String nombre = 10; 
print (nombre is int);
}