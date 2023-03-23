import java.util.Scanner;

public class Experiment3 {
    static double calculateInterest(double balance, int year) {
        if (year == 0) {
            return balance;
        } else {
            return 1.11 * calculateInterest(balance, year - 1);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double openingBalance;
        int year;

        System.out.print("Enter the opening balance: ");
        openingBalance = sc.nextDouble();
        System.out.print("Enter the duration of saving (years): ");
        year = sc.nextInt();

        System.out.print("Amount of money after " + year + " years: ");
        System.out.println((int) calculateInterest(openingBalance, year));
    }
}
