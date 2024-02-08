String capitalizar( String texto) 
{
  texto = texto.toUpperCase();
  return texto; 
}


// primitivos se pasan por valor

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // mapa['nombre'] = mapa['nombre']!.toUpperCase();
  // Romper referencia y hacer una copia 
  mapa = {...mapa};
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa; 
}


main(List<String> args) {
  // String nombre = 'fernando';
  // String nombre2 = capitalizar(nombre);
  // print(nombre);
  // print(nombre2);

  Map<String,String> persona = {
    'nombre': 'Tony Stark'
  };

  Map<String,String> persona2 = capitalizarMapa(persona);

  print(persona);

  print(persona2);

// En objetos se mandan por referencias. Apuntan al mismo puntero de memoria hay que hacer una copia del objeto o romper la referencia.


}


