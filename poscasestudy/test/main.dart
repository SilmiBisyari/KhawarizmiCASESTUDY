import 'dart:io';
import 'Discount.dart';
void main(){
  DateTime today = new DateTime.now();
  var newlist = new List();
  var title = """ 
  WELCOME TO THE POS SUPERMARKET
  ==============================
  $today
  """;
  print(title);

  stdout.write("  Number: RM");
  var newnumber = new Discount();

  newnumber.setdiscount(stdin.readLineSync());
  newnumber.calculationdiscount(newnumber);

  newlist.add(newnumber.getnumber);
  print(newlist);

  print(today);
}
