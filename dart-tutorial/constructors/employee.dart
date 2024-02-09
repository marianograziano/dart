class Employee {
  String? name; 
  int? age; 
  String?  subject; 
  double? salary; 

  Employee(this.name, this.age, [this.subject = "N/A", this.salary=0]);

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}


void main() {
  Employee employee = Employee("John", 30);
  employee.display(); 
}