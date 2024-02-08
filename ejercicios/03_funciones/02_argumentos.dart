void saludar( String mensaje, [String nombre = 'Inserte nombre', int edad = 10] ) {

  print('$mensaje, $nombre - $edad');

}
void saludar2(String? mensaje, {
  
  required String nombre, 
  int veces = 10
  })
   {
print ('$mensaje - $nombre - $veces');
}
main (List<String> args) {

  //saludar('Hola','Juan',-10);
  saludar2("Hola", nombre: 'Alfa');
}