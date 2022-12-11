public class AssignmentOne {
    public static void main(String[] args) {
        int maxValue = Max3(2, 3, 4);
        System.out.println("The max value is: " + maxValue);
    }

    static int Max3(int bil1, int bil2, int bil3) {
        int maxValue = bil1;
        maxValue = bil2 > maxValue ? bil2 : maxValue;
        maxValue = bil3 > maxValue ? bil3 : maxValue;
        return maxValue;
    }
}
