class Person {
  String? name; 
  int? age;
  String? subject; 
  double? salary; 

  Person(this.name, this.age, this.subject, this.salary);

  void display() {
    print("Name: ${this.name}"); 
    print("Age: ${this.age}"); 
    print("Subject: ${this.subject}"); 
    print("Salary: ${this.salary}"); 
    
  }

}

void main() {
  Person person = Person("John", 30, "Maths", 50000);
  person.display(); 
}