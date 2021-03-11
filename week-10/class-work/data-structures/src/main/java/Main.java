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
    }
}
