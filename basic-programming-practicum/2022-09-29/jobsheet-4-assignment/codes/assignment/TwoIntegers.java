import java.util.Scanner;

public class TwoIntegers {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Please insert the first number: ");
        int number1 = input.nextInt();
        System.out.print("Please insert the second number: ");
        int number2 = input.nextInt();

        if (number1 > number2) {
            System.out.println("The first number is greater than the second number");
        } else if (number1 < number2) {
            System.out.println("The second number is greater than the first number");
        } else {
            System.out.println("The first number and the second number is equal");
        }

        input.close();
    }
}
