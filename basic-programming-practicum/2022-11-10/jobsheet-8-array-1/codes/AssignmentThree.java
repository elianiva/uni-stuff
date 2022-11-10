import java.util.Scanner;

public class AssignmentThree {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of array elements: ");
        int elementCount = sc.nextInt();

        String evenNumber = "";
        String oddNumber = "";
        for (int i = 0; i < elementCount; i++) {
            System.out.printf("Enter the value of element %d: ", i + 1);
            int input = sc.nextInt();

            boolean isEven = input % 2 == 0;
            if (isEven) {
                evenNumber += String.format("Even number: %d", input);
                continue;
            }
            oddNumber += String.format("Even number: %d", input);
        }

        System.out.println(evenNumber + "\n" + oddNumber);

        sc.close();
    }
}
