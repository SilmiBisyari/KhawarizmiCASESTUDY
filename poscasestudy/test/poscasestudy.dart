//MUNIRAH BINTI MOHD AZIZ 1716274

library poscasestudy;
import 'dart:io';

class Inventory {
  int itemID;
  String name;
  String description;
  double price;
  int quantity;
  int buyQuantity;

  Inventory(this.itemID, this.name, this.description, this.price,
      this.quantity);

  void display(){
    print('$itemID\t\t\t$name\t\t\t$description\t\t\t$price\t\t\t$quantity' );
  }

  void cart(){

    print('\n$itemID\t\t\t$name\t\t\t$description\t\t\t$price\t\t\t\n');
    print('Add to Cart:');
    buyQuantity = int.parse(stdin.readLineSync());
    if(buyQuantity>quantity){
      print('NOT ENOUGH STOCK! PLEASE TRY AGAIN');
      return cart();
    }
    else {
      quantity=quantity-buyQuantity;
    }


  }
//faris Asyfraaf
  void receipt(){
    if(buyQuantity>0){
      print('$itemID\t\t\t$name\t\t\t$description\t\t\t$price\t\t\t$buyQuantity');
    }
    else return;

  }
}
