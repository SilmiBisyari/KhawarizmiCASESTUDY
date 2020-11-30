import 'dart:io';
import 'dart:core';
import 'poscasestudy.dart';

void main() {
  //Muhammad Silmi Bisyari line 1 - 16
  DateTime dateTime = DateTime.now();

  String currdate = dateTime
      .toIso8601String()
      .split('T')
      .first;

  var time = "Time : ${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
  print('Second: ${dateTime.second}');
  print("WELCOME TO THE Al-Khawarizmi Grocery   Date :$currdate $time");

  double total = 0;

  Inventory item1 = Inventory(101, 'Cadbury', '500 grams', 10.00, 24);
  Inventory item2 = Inventory(102, 'Pillow', '300 grams', 10.00, 24);
  Inventory item3 = Inventory(103, 'Sunsilk', '500 grams', 10.00, 24);

//Munirah Aziz
  print(
      "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nINVENTORY\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("List of Available items:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\tQuantity');
  item1.display();
  item2.display();
  item3.display();

  print(
      "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nSHOPPING CART\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

  print(
      "Enter the the quantity of items you wish to buy. Enter 0 if you do not wish to make a purchase:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\t');

  item1.cart();
  total = total + item1.buyQuantity * item1.price;

  item2.cart();
  total = total + item2.buyQuantity * item2.price;

  item3.cart();
  total = total + item3.buyQuantity * item3.price;


  print(
      "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nWELCOME TO AL-KHAWARIZMI GROCERY\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("List of Purchased items:\n");
  print('Item ID\t\tItem Name\t\tDescription\t\tPrice (RM)\t\tQuantity');
  item1.receipt();
  item2.receipt();
  item3.receipt();

  print('\nFull total: RM $total');

  //Muhammad Faris Asyaaf
  double tax = total + (total * 0.06);
  print('Total with GST(0.06) : RM$tax' );
  double discount = total - (total * 0.2);
  print('Discount (20%) : RM$discount' );
  print('YEAR END SALEEEEEE PROMOTIOOOONNNNNN');

  print(
      "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nTHANK YOU & PLEASE COME AGAIN\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

