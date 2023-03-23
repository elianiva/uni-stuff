import java.util.Scanner;

public class Conditional {
    static Scanner input = new Scanner(System.in);
    static double ASSIGNMENT_FACTOR = 0.2;
    static double MIDTERM_FACTOR = 0.35;
    static double FINAL_EXAM_FACTOR = 0.45;

    public static void main(String[] args) {

        System.out.println("Final Score Calculator");
        System.out.println("======================");
        int assignmentScore = getIntValue("Input your assignemnt score: ");
        int midTermScore = getIntValue("Input your midterm score: ");
        int finalExamScore = getIntValue("Input your final exam score: ");
        System.out.println("======================");
        double finalScore = (ASSIGNMENT_FACTOR * assignmentScore)
                + (MIDTERM_FACTOR * midTermScore)
                + (FINAL_EXAM_FACTOR * finalExamScore);
        String convertedScore = convertScore(finalScore);
        System.out.printf("Final score: %.2f", finalScore);
        System.out.printf("Grade: %s", convertedScore);
        System.out.println("======================");
        if (convertedScore.equals("A")
                || convertedScore.equals("B+")
                || convertedScore.equals("B")
                || convertedScore.equals("C+")
                || convertedScore.equals("C+")) {
            System.out.println("Congratulations! You passed!");
        } else {
            System.out.println("Unfortunately you failed.");
        }
    }

    private static int getIntValue(String prompt) {
        while (true) {
            System.out.print(prompt);
            String value = input.next();
            if (!value.isEmpty()) {
                int intValue = Integer.parseInt(value);
                if (intValue >= 0 && intValue <= 100) {
                    return intValue;
                }
            }
            System.out.println("Please insert the correct value, must be from 0 to 100!");
        }
    }

    private static String convertScore(double score) {
        if (score > 80 && score <= 100) return "A";
        if (score > 73 && score <= 80) return "B+";
        if (score > 65 && score <= 73) return "B";
        if (score > 60 && score <= 65) return "C+";
        if (score > 50 && score <= 60) return "C";
        if (score > 39 && score <= 50) return "D";
        return "E";
    }
}
