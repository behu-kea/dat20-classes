import java.lang.reflect.Array;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        List<String> names = new ArrayList<>();
        names.add("henrik");
        names.add("peter");
        names.add("ben");
        names.add("asd");

        names.get(1);

        // O(n)
        //names.remove(0);
        names.remove(3);

        // finding items O(n)

        Map<String, Double> salaryMap = new HashMap<>();
        salaryMap.put("Benjamin Hughes", 10000.0);

        System.out.println(salaryMap.get("Benjamin Hughes"));

        GameData stellarisData = new GameData("stellaris", 1232, "3/4-2012");

        Map<String, GameData> steamGames = new HashMap<>();
        steamGames.put("stellaris", stellarisData);

        // Constant
        System.out.println(steamGames.get("stellaris").price);


        Set<String> names3 = new TreeSet<String>();
        names3.add("Larry");
        names3.add("Moe");
        names3.add("Curly");
        names3.add("Moe"); // duplicate, won't be added
        names3.add("Shemp");
        names3.add("Moe"); // duplicate, won't be added

        //System.out.println(names);








        Set<String> names1 = new TreeSet<String>();
        names1.add("per");
        names1.add("hans");
        names1.add("kristina");

        Set<String> names2 = new TreeSet<String>();
        names2.add("per");
        names2.add("julie");
        names2.add("anna");

        System.out.println(names1);
        System.out.println(names2);

        //names1.addAll(names2);
        names1.retainAll(names2);

        System.out.println(names1);

    }
}
