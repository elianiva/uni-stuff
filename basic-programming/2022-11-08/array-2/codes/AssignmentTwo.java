public class AssignmentTwo {
    public static void main(String[] args) {
        int[][] buildings = {
                { 10, 25, 20, 25 }, // Building A
                { 15, 23, 15, 25 }, // Building B
                { 12, 12, 19, 23 }, // Building C
                { 13, 10, 28, 20 }, // Building D
        };

        for (int row = 0; row < buildings.length; row++) {
            int total = 0;
            for (int col = 0; col < buildings[row].length; col++) {
                total += buildings[col][row];
            }
            System.out.println(total);
        }
    }
}
