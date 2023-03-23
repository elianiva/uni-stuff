public class RecursivePrimeCheck {
    public static boolean isPrime(int n, int divisor) {
        if (n < 2 || n % divisor == 0) {
            return false;
        }

        if (n == 2 || (divisor * divisor > n)) {
            return true;
        }

        return isPrime(n, divisor + 1);
    }

    public static void main(String[] args) {
        boolean isPrime = isPrime(24, 2);
        System.out.printf(
            "Is the number a prime number? %s\n", isPrime ? "Yes" : "No");
    }
}
