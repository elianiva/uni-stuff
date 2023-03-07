public class Array {
    static String[] FLOWER_KINDS = {
            "Aglaonema",
            "Taro",
            "Alocasia",
            "Rose"
    };
    static int[][] STOCK_BY_BRANCH = {
            // Aglaonema - Taro - Alocasia - Rose
            { 10, 5, 15, 7 }, // Royal Garden 1
            { 6, 11, 9, 12 }, // Royal Garden 2
            { 2, 10, 10, 5 }, // Royal Garden 3
            { 5, 7, 12, 9 }, // Royal Garden 4
    };
    static int[] FLOWER_PRICES = {
            75_000, // Aglaonema
            50_000, // Taro
            60_000, // Alocasia
            10_000 // Rose
    };

    public static void main(String[] args) {
        int[] branchesStock = countStockAcrossBranches(STOCK_BY_BRANCH);
        for (int flowerId = 0; flowerId < branchesStock.length; flowerId++) {
            System.out.printf(
                    "Stock for %s: %d\n",
                    FLOWER_KINDS[flowerId],
                    branchesStock[flowerId]);
        }
        System.out.println("====================");
        int income = countIncomeForBranch(0, new int[] { 1, 2, 5, 0 });
        System.out.printf("Income for Royal Garden 1 is: %d", income);
    }

    private static int[] countStockAcrossBranches(int[][] stock) {
        int[] branchesStock = new int[4];
        for (int branchId = 0; branchId < stock.length; branchId++) {
            for (int flowerId = 0; flowerId < stock[branchId].length; flowerId++) {
                branchesStock[branchId] += stock[branchId][flowerId];
            }
        }
        return branchesStock;
    }

    private static int countIncomeForBranch(int branchId, int[] lossDetail) {
        if (lossDetail.length != FLOWER_KINDS.length) {
            System.out.println("Loss detail can't be less than the types of the flower");
            System.exit(1);
        }
        int income = 0;
        for (int stock : STOCK_BY_BRANCH[branchId]) {
            for (int flowerId = 0; flowerId < lossDetail.length; flowerId++) {
                int flowerIncome = (stock - lossDetail[flowerId]) * FLOWER_PRICES[flowerId];
                income += flowerIncome;
            }
        }
        return income;
    }
}
