import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float temperature, celcius, reamur, fahrenheit, kelvin;

        System.out.print("Insert the temperature in celcius: ");
        temperature = sc.nextInt();

        celcius = temperature;
        reamur = (4F / 5F) * celcius;
        fahrenheit = (9F / 5F * celcius) + 32F;
        kelvin = celcius + 273F;

        System.out.printf("Celcius: %.1f C\n", celcius);
        System.out.printf("Reamur: %.1f R\n", reamur);
        System.out.printf("Fahrenheit: %.1f F\n", fahrenheit);
        System.out.printf("Kelvin: %.1f K\n", kelvin);
    }
}

