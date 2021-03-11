import java.util.*;

public class Main {
    public static void main(String[] args) {
        List<String> names = new ArrayList<>();
        names.add("asd1");
        names.add("asd11");
        names.add("asd2");
        names.add("asd3");

        names.get(0);
        names.remove(2);



        Map<String, Double> salaryMap = new HashMap<>();
        salaryMap.put("Benjamin Hughes", 10000.0);

        System.out.println( salaryMap.get("Benjamin Hughes"));

        GameData stellaris = new GameData("21/2-2021", "stellaris");
        System.out.println(stellaris);
        Map<String, GameData> steamLibrary = new HashMap<>();
        steamLibrary.put("stellaris", stellaris);

        System.out.println(steamLibrary.get("stellaris"));


        // Set
        Set<String> namesSet = new HashSet<>();
        namesSet.add("Larry");
        namesSet.add("Moe");
        namesSet.add("Curly");
        namesSet.add("Moe"); // duplicate, won't be added
        namesSet.add("Shemp");
        namesSet.add("Moe"); // duplicate, won't be added

        System.out.println(namesSet);

        Set<String> namesA = new HashSet<>();
        namesA.add("per");
        namesA.add("pernille");
        namesA.add("Camilla");

        Set<String> namesB = new HashSet<>();
        namesB.add("per");
        namesB.add("Hans");
        namesB.add("Anna");

        // union
        //namesA.addAll(namesB);
        //System.out.println(namesA);

        // intersection
        namesA.retainAll(namesB);
        System.out.println(namesA);

        namesA.contains("Hans");



    }
}
