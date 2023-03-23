import java.util.Scanner;

public class AssignmentStar {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int N;
        while (true) {
            System.out.print("Insert the value of N (min = 5): ");
            N = input.nextInt();
            if (N >= 5) break;
            System.out.println("Please insert the N value correctly!");
        }

        for (int row = 0; row < N; row++) {
            for (int col = 0; col < N - row; col++) {
                System.out.print("*");
            }
            System.out.println();
        }
        
        input.close();
    }
}
