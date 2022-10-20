import java.util.Scanner;

public class AssignmentTwo {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter a number range: ");
        int range = input.nextInt();

        System.out.printf("The number of even numbers from 1 to %d is %d\n", range, (int) (range / 2));

        int evenNumberCount = 0;
        int sum = 0;
        for (int i = 1; i <= range; i++) {
            if (i % 2 != 0)
                continue;
            evenNumberCount++;
            System.out.printf("Even number %d is %d\n", evenNumberCount, i);
            sum += i;
        }

        System.out.printf("The sum of the even numbers from 1 to %d is %d\n", range, sum);
        System.out.printf("The average of the even numbers from 1 to %d is %.2f\n", range,
                (float) (sum / evenNumberCount));
    }
}
