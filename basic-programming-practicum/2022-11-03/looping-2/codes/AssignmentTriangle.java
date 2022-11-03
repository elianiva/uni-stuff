import java.util.Scanner;

public class AssignmentTriangle {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int N;
        while (true) {
            System.out.print("Insert the value of N (min = 3): ");
            N = input.nextInt();
            if (N >= 3) break;
            System.out.println("Please insert the N value correctly!");
        }

        for (int row = 1; row <= N; row++) {
            int number = 1;
            for (int col = 1; col <= N; col++) {
                if (col > N-row) {
                    System.out.print(number);
                    number++;
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }

        input.close();
    }
}
