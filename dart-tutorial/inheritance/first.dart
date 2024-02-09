class Person {
  String? name; 
  int? age; 

  void display() {
    print('Name $name');
    print('Age: $age');
  }
}

class Student extends Person {
  String? schoolName; 
  String? schoolAddress; 


  void displaySchoolInfo() {
    print("School Name: ${schoolName}");
    
    print("School Address: ${schoolAddress}");
  }
}

void main(List<String> args) {
  Student student = Student();
  student.name = "Pedro";
  student.age = 18;
  student.schoolAddress ="Lafinur 123";
  student.schoolName="Pepin";
  student.display();
  print("----");
  student.displaySchoolInfo();

}