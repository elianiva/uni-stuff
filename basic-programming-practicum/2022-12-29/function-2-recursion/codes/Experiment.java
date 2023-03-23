public class Experiment {
    static int factorialRecursive(int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * factorialRecursive(n - 1);
        }
    }

    static int factorialIterative(int n) {
        int factor = 1;
        for (int i = n; i >= 1; i--) {
            factor = factor * i;
        }
        return factor;
    }

    public static void main(String[] args) {
        System.out.println("Recursive: " + factorialRecursive(10));
        System.out.println("Iterative: " + factorialIterative(10));
    }
}
