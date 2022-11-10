import java.util.Scanner;

public class Arr3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Insert the number of row: ");
        int row = input.nextInt();

        System.out.print("Insert the number of column: ");
        int column = input.nextInt();

        int[][] number = new int[row][column];

        for (int i = 0; i < number.length; i++) {
            for (int j = 0; j < number[0].length; j++) {
                System.out.print("Enter a number [" + i + "][" + j + "]: ");
                number[i][j] = input.nextInt();
            }
            System.out.println("---------------");
        }

        for (int r[] : number) {
            for (int col : r) {
                System.out.print(col + " ");
            }
            System.out.println("");
        }

        input.close();
    }
}
