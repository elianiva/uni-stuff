public class AssignmentOne {
    public static void main(String[] args) {
        final String LINE = "-------------------------------------------------";
        char[] code = { 'A', 'B', 'D', 'E', 'F', 'G', 'H', 'L', 'N', 'T' };
        char[][] cities = {
                { 'B', 'A', 'N', 'T', 'E', 'N', ' ', ' ', ' ', ' ' },
                { 'J', 'A', 'K', 'A', 'R', 'T', 'A', ' ', ' ', ' ' },
                { 'B', 'A', 'N', 'D', 'U', 'N', 'G', ' ', ' ', ' ' },
                { 'C', 'I', 'R', 'E', 'B', 'O', 'N', ' ', ' ', ' ' },
                { 'B', 'O', 'G', 'O', 'R', ' ', ' ', ' ', ' ', ' ' },
                { 'P', 'E', 'K', 'A', 'L', 'O', 'N', 'G', 'A', 'N' },
                { 'S', 'E', 'M', 'A', 'R', 'A', 'N', 'G', ' ', ' ' },
                { 'S', 'U', 'R', 'A', 'B', 'A', 'Y', 'A', ' ', ' ' },
                { 'M', 'A', 'L', 'A', 'N', 'G', ' ', ' ', ' ', ' ' },
                { 'T', 'E', 'G', 'A', 'L', ' ', ' ', ' ', ' ', ' ' },
        };

        System.out.println(LINE);
        for (int row = 0; row < code.length; row++) {
            System.out.printf("| %c |   |", code[row]);
            for (int col = 0; col < cities[row].length; col++) {
                System.out.printf(" %c |", cities[row][col]);
            }
            System.out.print("\n");
            System.out.println(LINE);
        }
    }
}
