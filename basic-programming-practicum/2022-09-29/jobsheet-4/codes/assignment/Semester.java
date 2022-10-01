import java.util.Scanner;

public class Semester {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Insert your Midterm Exam score: ");
        int midtermExamScore = sc.nextInt();
        System.out.print("Insert your Final Exam score: ");
        int finalExamScore = sc.nextInt();
        System.out.print("Insert your Quiz score: ");
        int quizScore = sc.nextInt();
        System.out.print("Insert your Assignment score: ");
        int assignmentScore = sc.nextInt();

        float finalScore = midtermExamScore * 0.3f + 
                             finalExamScore * 0.4f +
                                  quizScore * 0.1f +
                            assignmentScore * 0.2f;

        System.out.printf("Your final score is: %.2f\n", finalScore);

        if (finalScore < 65) {
            System.out.println("Unfortunately you will have to do a remedy");
        } else {
            System.out.println("Congratulations! You passed.");
        }

        sc.close();
    }
}
