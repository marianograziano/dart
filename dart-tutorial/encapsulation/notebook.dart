class NoteBook {
  String? _name; 
  double? _prize;
  String? _model;

  NoteBook(this._name, this._prize, this._model);

  set name(String name) => this._name = name; 
  
  String get name => this._name!; 
  set model(String model) => this._model = model; 

  String get model {
    if (_model == "" || _model == Null) {
      return "No model";
    }
    return this._model!;
  }

// set prize(double prize) => this._prize = prize; 

 set prize(double prize) {
    if (prize < 0) {
      throw Exception("Price cannot be less than 0");
    }
    this._prize = prize;
  }

  
  double get prize => this._prize!; 


  void display() {
    print("Name: $_name");
    print("Price: $_prize");
  }
}



void main() {

  NoteBook notebook = NoteBook("Dell", 400, "");
  print(notebook.name);
  print(notebook.prize);
  print(notebook.model);
}