import java.util.Scanner;
import java.util.Random;

public class Quiz {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Random rand = new Random();

        char menu = 'y';
        do {
            int number = rand.nextInt(10) + 1;
            boolean success = false;
            do {
                System.out.print("Guess the number (1-10): ");
                int answer = input.nextInt();
                input.nextLine();
                success = (answer == number);
                if (!success) {
                    System.out.printf("The number you inserted is too " + (answer > number ? "big" : "small") + "\n");
                }
            } while (!success);
            System.out.print("Do you want to repeat the game (Y/N)");
            menu = input.next().charAt(0);
            input.nextLine();
        } while (menu == 'Y' || menu == 'y');

        input.close();
    }
}
