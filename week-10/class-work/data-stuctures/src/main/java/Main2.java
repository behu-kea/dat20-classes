import java.util.ArrayList;

public class Main2 {
    public static boolean isLargerThatTen(int number) {
        if (number > 10) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean hasTenItems(ArrayList<String> array) {
        if (array.size() == 10) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        int price = 2;
        isLargerThatTen(price);

        int houseWidth = 200;
        isLargerThatTen(price);

        int age = 23;
        isLargerThatTen(price);


        ArrayList<String> firstnames = new ArrayList<>();
        hasTenItems(firstnames);

        ArrayList<String> randomDishes = new ArrayList<>();
        hasTenItems(firstnames);
    }
}
