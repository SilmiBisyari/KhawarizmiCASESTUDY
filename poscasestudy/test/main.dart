import 'dart:io';
import 'dart:core';
import 'Discount.dart';
<<<<<<< HEAD
=======
import'poscasestudy.dart';
>>>>>>> e246785ef7ef3afdf21688a3bb9d2f9e4af54b14

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
  
  //Munirah Mohd Aziz Line 15->52
  double total=0;

  Inventory item1 = Inventory(101,'apple','1 kg', 10.00, 24);
  Inventory item2 = Inventory(102,'oranges','1 kg', 10.00, 24);
  Inventory item3 = Inventory(103,'grapes','1 kg', 10.00, 24);


  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nINVENTORY\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("List of Available items:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\tQuantity' );
  item1.display();
  item2.display();
  item3.display();

  print("\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nSHOPPING CART\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

  print("Enter the the quantity of items you wish to buy. Enter 0 if you do not wish to make a purchase:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\t' );

<<<<<<< HEAD
=======
  item1.cart();
  total = total + item1.buyQuantity*item1.price;

  item2.cart();
  total = total + item2.buyQuantity*item2.price;

  item3.cart();
  total = total + item3.buyQuantity*item3.price;


  print("\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nWELCOME TO AL-KHAWRIZMI GROCERY\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("List of Purchased items:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\tQuantity' );
  item1.receipt();
  item2.receipt();
  item3.receipt();

  print('\nFull total: RM $total');
  var newnumber = new Discount();
  print('Discount (%) :');
>>>>>>> e246785ef7ef3afdf21688a3bb9d2f9e4af54b14

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

<<<<<<< HEAD
  newnumber.displayresult();
=======
  print(today);
  
  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nTHANK YOU & PLEASE COME AGAIN\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

>>>>>>> e246785ef7ef3afdf21688a3bb9d2f9e4af54b14
}

