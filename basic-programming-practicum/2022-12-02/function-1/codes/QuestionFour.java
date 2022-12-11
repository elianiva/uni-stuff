public class QuestionFour {
    static void printUntil(int i) {
        for (int j = 1; j <= i; j++) {
            System.out.print(j);
        }
    }

    static int total(int num1, int num2) {
        return num1 + num2;
    }

    static void printTotal(int num1, int num2) {
        printUntil(total(num1, num2));
    }

    public static void main(String[] args) {
        int temp = total(1, 1);
        printTotal(temp, 5);
    }
}
