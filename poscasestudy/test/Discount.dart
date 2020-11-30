import 'dart:core';
import 'dart:io';
class Discount {

  double quantity;
  double gst;
  double NAmount;
  int discount;
  String number;
  double number2;
  double after;


  double total;

  var foodlist1 = ['Ayam','Fish','Duck'];
  var productDescription = ['Animal foods','Animal foods','Animal foods'];
  var priceproduct = ['8.34','6.83','7.90'];
  var priceproduct2 = [8.34,6.83,7.90];
  List <String> eachquantity = new List();
  List <double> eachproductquantity = new List();
  List <double> eachproductquantityandprices =new List();
  List <double> totaleachproductpricesandquantity = new List();


  void setdiscount(String number) {
    this.number = number;
  }
  String getnumber(){
    return number;
  }
  void afterdiscount(){

    double fine = 0;
    fine = total - (total * 36/100);
    this.after = fine;
  }
<<<<<<< HEAD
  void printinventory(){
    for(int i = 0;i<foodlist1.length;i++){
      print("  " +foodlist1[i] + "      " + "  " + productDescription[i] + "  " +"      RM" + priceproduct[i] + "  " +"      " + eachquantity[i] + "  " +"      RM" + totaleachproductpricesandquantity[i].toString() );
    }
  }
  void askQuantity(){
    eachquantity.add(getnumber());
=======

  void calculationdiscount(newnumber){
    newnumber.getnumber();
    newnumber.afterdiscount();
    print("Final Total : RM$ after" );

>>>>>>> e246785ef7ef3afdf21688a3bb9d2f9e4af54b14
  }
  void changesquantity() {
    for (int M = 0; M < foodlist1.length; M++) {
      double temp = double.parse(eachquantity[M]);
      eachproductquantity.add(temp);
    }
    calculateeachproductprice();
  }
  void calculateeachproductprice(){
  double sum ;
    for (int a = 0;a < priceproduct.length; a++) {
      sum = eachproductquantity[a] * priceproduct2[a];
      totaleachproductpricesandquantity.add(sum);
    }
  }
  void totalprices() {
    double total = 0;
    for (int k = 0; k < foodlist1.length; k++) {
      total = total + totaleachproductpricesandquantity[k];
    }
    this.total = total ;
  }
  void calculationtax(){
    double gst = 0.06;
    NAmount = after + (after * gst);
    this.NAmount = NAmount;
  }
  void calculationdiscount(){
    afterdiscount();
    print("  calculation after discount :RM$after" );
  }
  void displayresult(){
    totalprices();
    calculationdiscount();
    calculationtax();
    printinventory();
    print("                                                   total: RM$total");
    print("                                    total after discount: RM$after");
    print("                                    Total after tax     : RM$NAmount");
  }

}

