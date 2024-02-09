class Teacher {
  String? name; 
  int? age; 
  String? subject; 
  double? salary; 

  Teacher(String name, int age, String subject, double salary) {
    this.age = age; 
    this.name = name; 
    this.subject = subject; 
    this.salary = salary; 

  }

  void display() {
    print('Name ${this.name}');
    print('Age: ${this.age}');
    print('Subject: ${this.subject}');
    print('Salary: ${this.salary}\n');

  }

}

main(){
  Teacher teacher1 = Teacher("Juan", 12, "Matematica", 2000);
  teacher1.display();
  Teacher teacher2 = Teacher("Joshe", 11, "Calculo", 24500);
  teacher2.display();
}