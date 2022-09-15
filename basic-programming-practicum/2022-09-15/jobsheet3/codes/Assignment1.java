public class Assignment1 {
    public static void main(String[] args) {
        String campus = "Polinema";
        int grade = 1;
        char _class = 'i'; // can't use `class` since it's a Java keyword so I added an _ prefix
        int integer = 10;
        float number = 3.33333F;
        char character = 'C';

        System.out.printf("I am %s student, class %d%c\n", campus, grade, _class);
        System.out.printf("I'm learning to display values:\n");
        System.out.printf("Integer %d\n", integer);
        System.out.printf("Floating point %f\n", number);
        System.out.printf("Character %c\n", character);
    }
}

