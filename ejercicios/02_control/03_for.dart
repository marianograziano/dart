import 'dart:io';
main() {
  stdout.writeln('Ingrese tabla requerida'); 

  int tablaRequerida = int.parse(stdin.readLineSync() ?? '0');

  
  for (int i = 1; i < 11; i++) {
    print('$tablaRequerida * $i = ${tablaRequerida*i}');    
  }
}