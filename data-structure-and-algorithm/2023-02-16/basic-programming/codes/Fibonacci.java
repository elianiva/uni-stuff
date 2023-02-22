public class Fibonacci {
    public static void main(String[] args) {
        String recursiveFibonacciRow = getFibonacciRow("recursive", 9);
        System.out.println("Fibonacci using recursion: " + recursiveFibonacciRow);

        String loopFibonacciRow = getFibonacciRow("loop", 9);
        System.out.println("Fibonacci using recursion: " + loopFibonacciRow);
    }

    private static String getFibonacciRow(String type, int limit) {
        int[] fibonacciNumbers = new int[limit];
        if (type == "recursive") {
            for (int i = 0; i < limit; i++) {
                fibonacciNumbers[i] = recursiveFibonacci(i);
            }
        }

        if (type == "loop") {
            for (int i = 0; i < limit; i++) {
                fibonacciNumbers[i] = loopFibonacci(i);
            }
        }

        String row = "";
        for (int i = 0; i < fibonacciNumbers.length; i++) {
            row += fibonacciNumbers[i];
            if (i != fibonacciNumbers.length - 1) {
                row += ", ";
            }
        }
        return row;
    }

    private static int recursiveFibonacci(int n) {
        return n > 1
                ? recursiveFibonacci(n - 1) + recursiveFibonacci(n - 2)
                : n;
    }

    private static int loopFibonacci(int n) {
        int x = 1;
        int y = 0;
        int result = 0;

        while (n > 0) {
            result = x;
            x = x + y;
            y = result;
            n--;
        }

        return result;
    }
}
