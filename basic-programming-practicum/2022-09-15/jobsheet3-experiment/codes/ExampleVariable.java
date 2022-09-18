public class ExampleVariable {
    public static void main(String[] args) {
        String oneOfMyHobbies = "Playing futsal";
        boolean isSmart = true;
        char gender = 'M';
        byte age = 20;
        double gpa = 3.24, height = 1.78;
        System.out.println(oneOfMyHobbies);
        System.out.println("Is smart? " + isSmart);
        System.out.println("Gender: " + gender);
        System.out.println("My current age: " + age);
        System.out.println(String.format("My GPA is %s and my height is %s meters", gpa, height));
    }
}

