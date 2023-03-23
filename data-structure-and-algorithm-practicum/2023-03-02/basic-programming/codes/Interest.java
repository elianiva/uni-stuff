public class Interest {
    static int INITIAL_BALANCE = 1_000_000;
    static int TARGET_BALANCE = 1_500_000;
    static double INTEREST = 1.02;

    public static void main(String[] args) {
        int monthCount = 0;
        int balance = INITIAL_BALANCE;
        while (balance <= TARGET_BALANCE) {
            balance *= INTEREST;
            if (balance >= TARGET_BALANCE) {
                continue;
            }
            monthCount++;
        };
        System.out.printf("The balance reached the target after %d months\n", monthCount);
    }
}
