/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void escribir(String texto) =>  stdout.writeln(texto);
String leerInput () => stdin.readLineSync() ?? '';


void procesarUsuario (double salario, int numeroUsuario) {
  escribir('=========== Usuario  =============');
  escribir('¿Cúal es su nombre?');
  String nombre = leerInput();
  escribir('¿Qué edad tienes?');
  String edad =  leerInput();
  escribir('¿En qué país naciste?');
  String pais = leerInput();
  

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  escribir('Usuario $numeroUsuario deducciones');
  escribir( usuario.toString() );

//  double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  escribir( usuario.toString() );


}
main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  procesarUsuario(1500, 1);
  procesarUsuario(1800, 2);
  // Persona 2


}

