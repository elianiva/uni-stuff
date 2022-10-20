public class SecondSnippet {
    public static void main(String[] args) {
        int n = 5;
        boolean stop = false;

        int i = 1;
        while (!stop) {
            if (i >= n) {
                stop = true;
            } else {
                if (i % 2 == 1) {
                    System.out.println("#");
                } else {
                    System.out.println("*");
                }
            }
            i++;
        }
    }
}
