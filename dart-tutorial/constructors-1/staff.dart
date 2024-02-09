class Staff {
  String? name; 
  int? phone1; 
  int? phone2; 
  String? subject; 

  Staff(String name, int phone1, String subject) {
    this.name = name; 
    this.phone1 = phone1; 
    this.subject = subject; 
  }

  void display() {
    print("Name: ${this.name}");
    print("Phone1: ${this.phone1}");
    print("Phone2: ${this.phone2}");
    print("Subject: ${this.subject}");
  }
}

void main() {
  Staff staff = Staff("Juan", 1231231, "Maths");
  staff.display();
}