class Table {
  String? name; 
  String? color; 

  Table({this.name = "Table1", this.color = "White"});

  void display() {
    print("Name : ${this.name}");
    print("Color: ${this.color}");

  }
}

void main() {
  Table table = Table(); 
  table.display(); 

}