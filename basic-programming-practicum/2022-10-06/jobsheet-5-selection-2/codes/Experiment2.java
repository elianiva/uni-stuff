import java.util.Scanner;

public class Experiment2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String category;
        int income, netSalary;
        double tax = 0;

        System.out.print("Enter a category: ");
        category = sc.nextLine();
        System.out.print("Enter the amount of income: ");
        income = sc.nextInt();

        if (category.equalsIgnoreCase("worker")) {
            if (income <= 2000000) {
                tax = 0.1;
            } else if (income <= 3000000) {
                tax = 0.15;
            } else {
                tax = 0.2;
            }
            netSalary = (int) (income - (income * tax));
            System.out.println("The net salary you will receive: " + netSalary);
        } else if (category.equals("businessman")) {
            if (income <= 2500000) {
                tax = 0.15;
            } else if (income <= 3500000) {
                tax = 0.2;
            } else {
                tax = 0.25;
            }
            netSalary = (int) (income - (income * tax));
            System.out.println("The net salary you will receieve: " + netSalary);
        } else {
            System.out.println("The category you entered is wrong");
        }

        sc.close();
    }
}
