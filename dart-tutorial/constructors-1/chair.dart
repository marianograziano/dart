class Chair {
  String? name; 
  String? color; 

Chair({this.name, this.color});

void display() {
  print("Name ${this.name}");
  print("Color: ${this.color}");

}
  
}

void main() {
  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display(); 

}