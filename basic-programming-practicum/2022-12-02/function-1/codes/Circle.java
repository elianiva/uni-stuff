public class Circle {
    public static void main(String[] args) {
        int r = 10;
        double circumference = calculateCircumference(10);
        double area = calculateArea(r);
        System.out.printf("The circumference is: %.2f\n", circumference);
        System.out.printf("The area is: %.2f\n", area);
    }

    static double calculateCircumference(int r) {
        return 2 * Math.PI * r; 
    }
    
    static double calculateArea(int r) {
        return Math.PI * Math.pow(r, 2);
    }
}
