import java.util.Scanner;

public class AssignmentThree {
    final static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int[] studentScores = getStudentScores(10);
        double average = calculateAverage(studentScores);
        System.out.printf("The average score is: %.2f\n", average);
    }

    static int[] getStudentScores(int limit) {
        int[] result = new int[limit];
        for (int i = 0; i < limit; i++) {
            System.out.printf("Insert the score for student %d: ", i + 1);
            result[i] = scanner.nextInt();
        }
        return result;
    }

    static double calculateAverage(int[] scores) {
        int sum = 0;
        for (int score : scores) {
            sum += score;
        }
        return sum / scores.length;
    }
}
