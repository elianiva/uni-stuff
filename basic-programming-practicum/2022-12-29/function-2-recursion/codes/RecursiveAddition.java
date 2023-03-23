public class RecursiveAddition {
    public static int recursiveAddition(int limit) {
        if (limit == 1) return 1;
        return limit + recursiveAddition(limit - 1);
    }

    public static void main(String[] args) {
        System.out.println(recursiveAddition(8));
    }
}
