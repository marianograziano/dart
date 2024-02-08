void main(List<String> args) {
  //Future timeout1 = Future.delayed(Duration(seconds: 3), () { print('3 segundos despues');});
  //print('Fin del main');

  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
     print('3 segundos despues');
     return('Retorno Future');
});
//timeout.then((value) => print(value));
timeout.then(print);

print('Fin del main');

}