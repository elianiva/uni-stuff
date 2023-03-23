import java.util.Scanner;

public class AssignmentTwo {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Insert the number of row: ");
        int row = input.nextInt();
        System.out.print("Insert the number of column: ");
        int col = input.nextInt();
        int[][] numbers = new int[row][col];

        // store the variable ahead of time so we don't need to calculate it on demand
        int minValue = Integer.MAX_VALUE;
        int minValueAmount = 0;
        String minValuePosition = "";
        final int MAX_NUM = 50;
        boolean isBigNumberFound = false;

        for (int r = 0; r < numbers.length; r++) {
            for (int c = 0; c < numbers[r].length; c++) {
                System.out.printf("Insert the number for row %d and column %d: ", r, c);
                int inputValue = input.nextInt();
                numbers[r][c] = inputValue;

                if (inputValue <= minValue) {
                    // reset since the max number changed
                    if (inputValue != minValue) {
                        minValueAmount = 0;
                        minValuePosition = "";
                    }

                    minValue = inputValue;
                    if (inputValue == minValue) {
                        minValuePosition += String.format("%d -> [row: %d, col: %d]\n", minValueAmount + 1, r, c);
                        minValueAmount++;
                    }
                }

                if (inputValue > MAX_NUM) {
                    isBigNumberFound = true;
                }
            }
        }

        int chosenMenu;

        while (true) {
            while (true) {
                System.out.println("Menu:");
                System.out.println("1. Display MIN Value");
                System.out.println("2. Display MIN Value & Amount");
                System.out.println("3. Array conditions");
                System.out.print("Choose which menu to open (1-3): ");
                chosenMenu = input.nextInt();
                if (chosenMenu >= 1 && chosenMenu <= 3) {
                    break;
                }
                System.out.println("Please insert the menu number correctly!");
            }

            switch (chosenMenu) {
                case 1:
                    System.out.printf("The MIN value is: %d\n", minValue);
                    break;
                case 2:
                    System.out.printf("The MIN value is: %d\n", minValue);
                    System.out.printf("The MIN value amount is: %d\n", minValueAmount);
                    System.out.printf("The MIN value position is: \n%s\n", minValuePosition);
                    break;
                case 3:
                    System.out.println(isBigNumberFound ? "FOUND" : "NOT FOUND");
                    break;
            }

            System.out.print("Do you want to choose another menu? (y/n): ");
            boolean repeatMenu = input.next().equalsIgnoreCase("y");
            if (!repeatMenu) {
                break;
            }
        }

        input.close();
    }
}
