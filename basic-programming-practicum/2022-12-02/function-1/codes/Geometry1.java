import java.util.Scanner;

public class Geometry1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int length, width, height, area, volume;
        System.out.print("Enter a length value: ");
        length = input.nextInt();
        System.out.print("Enter a width value: ");
        width = input.nextInt();
        System.out.print("Enter a height value: ");
        height = input.nextInt();
        area = length * width;
        System.out.println("Area of rectangle is " + area);
        volume = length * width * height;
        System.out.println("Volume of block is " + volume);
    }
}
