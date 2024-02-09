class NoteBook {
  String? _name; 
  double? _prize;
  String? _model;

  NoteBook(this._name, this._prize, this._model);

  String get name => this._name!; 

  String get model {
    if (_model == "" || _model == Null) {
      return "No model";
    }
    return this._model!;
  }

  double get prize => this._prize!; 



}


void main() {

  NoteBook notebook = NoteBook("Dell", 400, "");
  print(notebook.name);
  print(notebook.prize);
  print(notebook.model);
}