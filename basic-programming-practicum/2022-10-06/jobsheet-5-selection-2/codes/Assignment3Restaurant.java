import java.util.Scanner;

public class Assignment3Restaurant {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String foodName;
        int foodPrice, shippingCost;
        boolean isUsingExpressDelivery;

        System.out.print("Enter a food name: ");
        foodName = sc.next();
        System.out.print("Enter the food price: ");
        foodPrice = sc.nextInt();
        System.out.print("Do you want express delivery (0 = no, 1 = yes)? ");
        isUsingExpressDelivery = sc.nextInt() == 1;

        shippingCost = foodPrice < 100_000 ? 20_000 : 30_000;

        if (isUsingExpressDelivery) {
            shippingCost += 25_000;
        }

        System.out.println("RECEIPT");
        System.out.printf("%s\t\t\tIDR %s\n", foodName, foodPrice);
        System.out.printf("Shipping Cost\t\tRp %s (%s)\n", shippingCost, isUsingExpressDelivery ? "express" : "regular");
        System.out.printf("TOTAL\t\t\tRp %s\n", foodPrice + shippingCost);

        sc.close();
    }
}
