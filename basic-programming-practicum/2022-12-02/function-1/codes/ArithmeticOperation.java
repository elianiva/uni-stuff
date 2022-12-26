import java.util.Scanner;

public class ArithmeticOperation {
    static int multiplication(int C, int D) {
        int H;
        H = (C + 10) % (D + 19);
        return H;
    }

    static int substraction(int A, int B) {
        int X;
        A = A + 7;
        B = B + 4;
        X = multiplication(A, B);
        return X;
    }

    public static void main(String[] args) {
        int value1, value2;
        Scanner input = new Scanner(System.in);
        System.out.print("Input value 1: ");
        value1 = input.nextInt();
        System.out.print("Input value 2: ");
        value2 = input.nextInt();
        int result = substraction(value1, value2);
        System.out.println("The result is " + result);
    }
}
