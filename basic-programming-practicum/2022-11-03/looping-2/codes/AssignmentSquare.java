import java.util.Scanner;

public class AssignmentSquare {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int N;
        while (true) {
            System.out.print("Insert the value of N (min = 3): ");
            N = input.nextInt();
            if (N >= 3) break;
            System.out.println("Please insert the N value correctly!");
        }

        for (int row = 0; row < N; row++) {
            for (int col = 0; col < N; col++) {
                boolean isFirstOrLastRow = row == 0 || row == N - 1;
                boolean isFirstOrLastColumn = col == 0 || col == N - 1;
                int paddingLength = String.format("%d", N).length() + 1;
                System.out.printf("%" + paddingLength + "s", isFirstOrLastRow || isFirstOrLastColumn ? N : " ");
            }
            System.out.println();
        }

        input.close();
    }
}
