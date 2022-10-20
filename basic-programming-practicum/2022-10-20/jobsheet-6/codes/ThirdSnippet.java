public class ThirdSnippet {
    public static void main(String[] args) {
        int n = 5;
        long result = 1;
        for (int i = 1; i <= n; i++) {
            result = result * i;
        }
        System.out.println(n + "!=" + result);
    }
}
