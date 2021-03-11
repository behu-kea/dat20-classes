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

    }
}
