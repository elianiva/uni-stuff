import java.util.Scanner;

public class Loop {
    static Scanner input = new Scanner(System.in);
    static int NIM_LIMIT = 10;
    static String[] DAYS = {
            "SUNDAY",
            "MONDAY",
            "TUEDAYS",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY"
    };

    public static void main(String[] args) {
        String nim = getNIM("Insert your NIM: ");
        int repeatAmount = getLastTwoDigit(nim);
        for (int i = 0; i < repeatAmount; i++) {
            System.out.printf("%s ", DAYS[i % 7]);
        }
    }

    private static String getNIM(String prompt) {
        while (true) {
            System.out.print(prompt);
            String nim = input.next();

            if (nim.length() < NIM_LIMIT) {
                System.out.println("Your NIM should be at least have a length of 10");
                continue;
            }

            // every character should be a number
            boolean isValid = true;
            for (int i = 0; i < nim.length(); i++) {
                if (Character.isAlphabetic(nim.charAt(i))) {
                    isValid = false;
                }
            }
            if (!isValid) {
                System.out.println("Your NIM cannot contain any alphabet!");
                continue;
            }

            return nim;
        }
    }

    private static int getLastTwoDigit(String nim) {
        String lastTwoDigit = nim.substring(nim.length() - 2, nim.length());
        int value = Integer.parseInt(lastTwoDigit);
        return value < 10 ? value + 10 : value;
    }
}
