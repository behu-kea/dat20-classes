import java.util.ArrayList;

public class BigO {
    public static void main(String[] args) {
        // Det her er uden
        ArrayList<String> strings = new ArrayList<>();
        for (int i = 0; i < 10000; i++) {
            strings.add("abc");
        }

        // Constant time O(1)
        // names we say is an ArrayList
        String name = strings.get(0);
        name = name + "asd";
        System.out.println(name);


        // Linear time
        for (String string : strings) {
            System.out.println(string); // 2 gange
        }

        // Quadratic time
        for (String string1 : strings) {
            for (String string2 : strings) {
                System.out.println(string1 + string2); // 4 gange
            }
        }











        for (String firstName : firstNames) {
            for (String lastname : lastNames) {
                System.out.println(firstName + " " + lastname);
            }
        }

        for (String firstName : firstNames) {
            for (String lastname : lastNames) {
                System.out.println(firstName + " " + lastname);
            }
        }

        // O(n^2) + O(n^2) = O(n^2)
    }
}
