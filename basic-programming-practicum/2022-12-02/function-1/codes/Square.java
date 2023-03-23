public class Square {
    static int squareArea(int side) {
        int area = side * side;
        return area;
    }

    public static void main(String[] args) {
        int a = squareArea(5);
        System.out.println("Area of a square with side = 5 is " + a);
    }
}
