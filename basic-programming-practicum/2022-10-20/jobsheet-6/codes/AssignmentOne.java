import java.util.Scanner;

public class AssignmentOne {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int limit = input.nextInt();

        for (int i = 0; i <= limit; i++) {
            if (i % 5 == 0) continue;
            System.out.println(i);
        }
    }
}
