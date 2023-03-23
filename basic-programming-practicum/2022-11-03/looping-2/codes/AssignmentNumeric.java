import java.util.Scanner;

public class AssignmentNumeric {
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
            for (int col = 0; col < N; col++) {
                boolean isEvenRow = row % 2 == 0;
                System.out.print(isEvenRow ? N - col : col + 1);
            }
            System.out.println();
        }

        input.close();
    }
}
