public class RecursiveDescendingSeries {
    public static void printNumbers(int start) {
        System.out.println(start);
        if (start != 0) {
            printNumbers(start - 1);
        }
    }

    public static void main(String[] args) {
        printNumbers(10);
    }
}
