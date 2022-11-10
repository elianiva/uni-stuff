import java.util.Scanner;

public class AssignmentTwo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of array elements: ");
        int elementCount = sc.nextInt();
        int[] elements = new int[elementCount];

        for (int i = 0; i < elements.length; i++) {
            System.out.printf("Enter the value of element %d: ", i + 1);
            elements[i] = sc.nextInt();
        }

        int largest = 0;
        for (int i = 0; i < elements.length; i++) {
            if (elements[i] > largest) {
                largest = elements[i];
            }
        }
        System.out.printf("The largest number is %d\n", largest);

        sc.close();
    }
}
