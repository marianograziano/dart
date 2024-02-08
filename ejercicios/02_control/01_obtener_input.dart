import 'dart:io'; 

main () { 
  // stdout.writeln('¿Cual es tu nombre?'); 
  // String? nombre = stdin.readLineSync();
  // print(nombre);
  //   stdout.writeln('Tu nombre es ${nombre ?? 'desconocido'}');
  
int edad = int.parse(stdin.readLineSync() ?? '0');

stdout.writeln(edad);

if (edad >= 21) {
  stdout.writeln('ciudadano');
  
} else if (edad>= 18 ) {
    stdout.writeln('mayor');
      
} else {
    stdout.writeln('menor');

}
  

        

    


}