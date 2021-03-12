import java.util.ArrayList;

public class BigO {
    public static Boolean isPrime(Integer n) {
        // n = 2
        if (n < 2 || n % 1 != 0) {
            return false;
        }
        for (int i = 2; i < n; ++i) {
            System.out.println("called");
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        Integer n = 10;
        ArrayList<String> names = new ArrayList<>();
        for (int i = 0; i < n; i++) {
            names.add("Peter");
        }

        // O(1) + O(n) + O(n^2)

        // names we say is an ArrayList
        // Constant time O(1)
        String firstName = names.get(0);
        //System.out.println(firstName);

        // Linear time O(n)
        for (String name : names) {
            /*System.out.println(name);*/
        }

        // Quadratic time O(n^2)
        for (String name1 : names) {
            for (String name2 : names) {
                /*System.out.println(name1 + name2);*/
            }
        }

        /*if (x > 0) {
            // In here the program takes O(1)
        } else if (x < 0) {
            // In here the program takes O(n)
        } else {
            // In here the program takes O(n^2)
        }*/

        isPrime(4);
    }

}