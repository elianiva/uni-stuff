public class Laundry {
    static int PRICE = 4_500;
    static double DISCOUNT = 0.05;
    // Ani - Budi - Bina - Cita
    static int[] CUSTOMERS = { 4, 15, 6, 11 };

    public static void main(String[] args) {
        int income = 0;
        for (int weight : CUSTOMERS) {
            income += weight > 10 ? (weight * PRICE) * DISCOUNT : weight * PRICE;
        }
        System.out.println("The total income for Smile Laundry is: " + income);
    }
}
