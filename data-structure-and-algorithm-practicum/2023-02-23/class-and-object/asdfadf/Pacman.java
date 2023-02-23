public class Pacman {
    public int x;
    public int y;
    public int width;
    public int height;

    public int moveLeft() {
        int movedValue = x - 1;
        if (movedValue >= 0) {
            x = movedValue;
        }
        return x;
    }

    public int moveRight() {
        int movedValue = x + 1;
        if (movedValue <= width) {
            x = movedValue;
        }
        return x;
    }

    public int moveUp() {
        int movedValue = y - 1;
        if (movedValue >= 0) {
            y = movedValue;
        }
        return y;
    }

    public int moveDown() {
        int movedValue = y + 1;
        if (movedValue <= height) {
            y = movedValue;
        }
        return y;
    }

    public void printPosition() {
        System.out.println("Position X: " + x);
        System.out.println("Position Y: " + y);
    }
}
