class Doctor {
   String _name; 
   int _age; 
   String  _gender; 


  // Constructor

  Doctor(this._name, this._age, this._gender);


  //  Standar Getter
  String get name => _name; 
  int get age => _age;
  String get gender => _gender; 

  // Map Getter
  Map <String, dynamic> get map {
    return {"name": _name, "age": _age, "gender": _gender};

  }

}

void main(List<String> args) {
    Doctor d = Doctor("John", 41, "Male");
    print(d.map);
}