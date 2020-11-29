import 'dart:io';
import "Discount.dart";
void main(){

  var newlist = new List();
  var title = """ 
  WELCOME TO THE POS SUPERMARKET
  ==============================
  """;
  print(title);

  stdout.write("  Number: RM");
  var newnumber = new Discount();

  newnumber.setdiscount(stdin.readLineSync());
  newnumber.calculationdiscount(newnumber);

  newlist.add(newnumber.getnumber);
  print(newlist);


}
