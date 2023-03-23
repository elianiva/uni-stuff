import java.util.Scanner;

public class Triangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int base, height;
        float area;

        System.out.print("Insert the base: ");
        base = sc.nextInt();
        System.out.print("Insert the height: ");
        height = sc.nextInt();
        area = base * height / 2;
        System.out.println("Triangle area: " + area);
    }
}

