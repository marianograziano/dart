class SimpleInterest {
  double? principal; 
  double? rate;
  double? time; 

  double interest() {
    return (principal! * rate! * time! )/100;

  }
}

void main(List<String> args) {
  SimpleInterest simpleInterest = SimpleInterest();
  simpleInterest.principal=1000;
  simpleInterest.rate=10;
  simpleInterest.time=2;

  print('El interes simple es ${simpleInterest.interest()}');
}