import java.util.Scanner;

public class ProblemOne {
    public static void main(String[] args) {
        final float DAILY_SCORE_RATIO = 0.2f;
        final float MIDDLE_EXAM_RATIO = 0.3f;
        final float FINAL_EXAM_RATIO = 0.4f;
        final float QUIZ_SCORE_RATIO = 0.05f;
        Scanner input = new Scanner(System.in);

        System.out.print("Insert daily scores: ");
        int dailyScores = input.nextInt();

        System.out.print("Insert middle exam score: ");
        int middleExamScore = input.nextInt();

        System.out.print("Insert final exam score: ");
        int finalExamScore = input.nextInt();

        System.out.print("Insert quiz score: ");
        int quizScore = input.nextInt();

        float totalScore = dailyScores * DAILY_SCORE_RATIO +
                middleExamScore * MIDDLE_EXAM_RATIO +
                finalExamScore * FINAL_EXAM_RATIO +
                quizScore * QUIZ_SCORE_RATIO;

        System.out.printf("Your final score is: %.2f\n", totalScore);

        input.close();
    }
}
