public class MultiParameter {
    static void Print(String str, int... a) {
        System.out.println("String: " + str);
        System.out.println("Number of parameters: " + a.length);
        for (int i : a) {
            System.out.println(i + " ");
        }
        System.out.println("");
    }

    public static void main(String[] args) {
        Print("Basic Programming", 85, 90);
        Print("Information Technology", 1, 2, 3, 4, 5);
        Print("Politeknik Negeri Malang");
    }
}
