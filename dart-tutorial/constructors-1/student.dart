class Student {
  String? name; 
  int? age; 
  int? rollNumber; 

  // Constructor

  Student(String name, int age, int rollNumber){
    print('Constructor called');
    this.name = name; 
    this.age = age; 
    this.rollNumber = rollNumber; 

  }
}

void main(List<String> args) {
  Student student = Student('Juan',12,23);
  print('Name ${student.name}');
  print('Age ${student.age}');
  print('Roll Number ${student.rollNumber}');
}