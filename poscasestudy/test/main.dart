import 'dart:io';
import 'dart:core';
import 'Discount.dart';

void main(){

  DateTime dateTime = DateTime.now();
  var newnumber = new Discount();

  //print date
  String currdate = dateTime.toIso8601String().split('T').first;


  var title = """ 
  WELCOME TO THE POS SUPERMARKET   ($currdate)
  ============================================
  ============================================  
  """;
  print(title);


  for(int i = 0 ; i<newnumber.foodlist1.length;i++) {
    print(newnumber.foodlist1[i]);
    print("how much the quantity : ");
    newnumber.setdiscount(stdin.readLineSync());
    newnumber.askQuantity();
  }
  //newnumber.calculationtax();
  print("  =============================================================================");
  print("                                  Receipt                                      ");
  print("  Items      Description      Price(each)   Quantity   Total(prices X Quantity) ");

  //print("Did you want your receipt? (Y/N)");
  newnumber.changesquantity();

  newnumber.displayresult();
}

