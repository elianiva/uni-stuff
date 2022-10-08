import java.util.Scanner;

public class Assignment3Triangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int ab, bc, ca;

        System.out.print("Enter the first side length: ");
        ab = sc.nextInt();
        System.out.print("Enter the second side length: ");
        bc = sc.nextInt();
        System.out.print("Enter the third side length: ");
        ca = sc.nextInt();

        if (ab == bc && bc == ca && ca == ab) {
            System.out.println("The triangle is equilateral");
        } else if (ab == bc || bc == ca || ca == ab) {
            System.out.println("The triangle is isosceles");
        } else {
            System.out.println("The triangle is arbitrary");
        }

        sc.close();
    }
}
