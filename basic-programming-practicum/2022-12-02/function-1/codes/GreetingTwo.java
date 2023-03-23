public class GreetingTwo {
    static void giveGreeting() {
        System.out.println("Hello! Good morning");
    }

    static void saySomething(String expression) {
        System.out.println(expression);
    }

    public static void main(String[] args) {
        giveGreeting();
        String exp = "Welcome to Java Programming";
        saySomething(exp);
    }
}
