public class AssignmentThree {
    public static void main(String[] args) {
        int[][] buildings = {
                { 10, 25, 20, 25 }, // Building A
                { 15, 23, 15, 25 }, // Building B
                { 12, 12, 19, 23 }, // Building C
                { 13, 10, 28, 20 }, // Building D
        };
        int[] prices = { 3000, 2500, 4000, 4500 };

        for (int row = 0; row < buildings.length; row++) {
            int profit = 0;
            for (int col = 0; col < buildings.length; col++) {
                profit += buildings[row][col] * prices[col];
            }
            System.out.println(profit);
        }
    }
}
