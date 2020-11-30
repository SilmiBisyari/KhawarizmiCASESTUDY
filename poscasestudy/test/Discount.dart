import 'dart:core';
class Discount {

  int discount;
  String number;
  double number2;
  double after;
  double fine;

  void setdiscount(String number) {
    this.number = number;
  }
  String getnumber(){
    return number;
  }
  void afterdiscount(){

    double fine = 0;
    double number2 = double.parse(number);
    fine = number2 - (number2 * 36/100);
    this.after = fine;
  }

  void calculationdiscount(newnumber){
    newnumber.getnumber();
    newnumber.afterdiscount();
    print("Final Total : RM$ after" );

  }
}

