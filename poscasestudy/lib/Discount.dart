public class Discount {

  int discount;

  Scanner in = new Scanner(System.in);

  System.out.println("Enter discount percentage:");
  discount = in.nextInt();

  int afterDiscount = Total - (Total * discount / 100);

  return("After discount your bill is: " + afterDiscount);


}