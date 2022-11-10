import java.util.Scanner;

public class AssignmentThree {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of array elements: ");
        int elementCount = sc.nextInt();

        int[] numbers = new int[elementCount];

        for (int i = 0; i < elementCount; i++) {
            System.out.printf("Enter the value of element %d: ", i + 1);
            int input = sc.nextInt();
            numbers[i] = input;
        }

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                System.out.printf("Even number: %d\n", numbers[i]);
            }
        }

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 != 0) {
                System.out.printf("Odd number: %d\n", numbers[i]);
            }
        }

        sc.close();
    }
}
