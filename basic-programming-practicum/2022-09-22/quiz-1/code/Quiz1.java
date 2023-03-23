//EVEN CODE
//08_DICHA ZELIANIVAN ARKANA

import java.util.Scanner;

public class Quiz1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        final int MONTHLY_CONTRIBUTION = 27000;
        final float TAX = 0.07f; // 7%

        System.out.print("Insert your base salary: ");
        int baseSalary = sc.nextInt();
        System.out.print("Insert the number of people in your family: ");
        int numberOfFamily = sc.nextInt();

        int monthlyContributionTotal = MONTHLY_CONTRIBUTION * numberOfFamily;
        float taxTotal = baseSalary * TAX;
        float netSalary = baseSalary - monthlyContributionTotal - taxTotal;

        System.out.println("----------------------------------------");
        System.out.printf("Your family members: %d\n", numberOfFamily);
        System.out.printf("Total monthly contributions: %d x %d = %d\n", MONTHLY_CONTRIBUTION, numberOfFamily, monthlyContributionTotal);
        System.out.printf("Tax total: %s x %d = %.2f\n", "7%", baseSalary, taxTotal);
        System.out.printf("Your net salary is: %d - %d - %.2f = %.2f\n", baseSalary, monthlyContributionTotal, taxTotal, netSalary);

        sc.close();
    }
}
