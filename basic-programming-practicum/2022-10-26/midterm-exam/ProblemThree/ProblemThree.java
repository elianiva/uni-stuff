import java.util.Scanner;

public class ProblemThree {
    public static void main(String[] args) {
        final float DAILY_SCORE_RATIO = 0.2f;
        final float MIDDLE_EXAM_RATIO = 0.3f;
        final float FINAL_EXAM_RATIO = 0.4f;
        final float QUIZ_SCORE_RATIO = 0.05f;
        final int PASSING_FINAL_GRADE = 55;
        final int PASSING_EXAM_SCORE = 100;
        final int SE_FINAL_SCORE = 70;
        final int SE_ALL_SCORES = 65;
        final int MM_FINAL_SCORE = 70;
        final int MM_ALL_SCORES = 70;

        Scanner input = new Scanner(System.in);

        System.out.print("How many times do you want to calculate the score? ");
        int repetitionLimit = input.nextInt();

        for (int i = 0; i < repetitionLimit; i++) {
            System.out.printf("\nStudent number: %d\n", i + 1);

            System.out.print("Insert daily scores: ");
            int dailyScores = input.nextInt();

            System.out.print("Insert middle exam score: ");
            int middleExamScore = input.nextInt();

            System.out.print("Insert final exam score: ");
            int finalExamScore = input.nextInt();

            System.out.print("Insert quiz score: ");
            int quizScore = input.nextInt();

            float finalScore = dailyScores * DAILY_SCORE_RATIO +
                    middleExamScore * MIDDLE_EXAM_RATIO +
                    finalExamScore * FINAL_EXAM_RATIO +
                    quizScore * QUIZ_SCORE_RATIO;

            System.out.printf("Your final score is: %.2f\n", finalScore);

            if (finalScore < PASSING_FINAL_GRADE
                    || (finalScore < PASSING_FINAL_GRADE && middleExamScore < PASSING_EXAM_SCORE
                            && finalExamScore < PASSING_EXAM_SCORE)) {
                System.out.println("Unfortunately you did not pass.");
                input.close();
                return;
            }

            System.out.println("Congratulations, you passed!");

            boolean isSoftwareEngineerMajor = finalScore < SE_FINAL_SCORE
                    && (dailyScores > SE_ALL_SCORES && middleExamScore > SE_ALL_SCORES && quizScore > SE_ALL_SCORES);
            boolean isMultimediaMajor = finalScore >= MM_FINAL_SCORE
                    && (dailyScores > MM_ALL_SCORES && quizScore > MM_ALL_SCORES);

            String major = "";
            if (isSoftwareEngineerMajor) {
                major = "Software Engineering";
            } else if (isMultimediaMajor) {
                major = "Multimedia";
            } else {
                major = "Information System";
            }

            System.out.printf("Based on your grade, your major will be: %s\n", major);
        }

        input.close();
    }
}
