void main(List<String> args) {

  Audio volumen = Audio.alto;

switch (volumen) {
  case Audio.alto: print("Volumen Alto"); break; 
  case Audio.medio: print("Volumen Medio"); break; 
  case Audio.bajo: print("Volumen bajo"); break; 
    
     
}

  
}

enum Audio {
  bajo,
  alto,
  medio
}

