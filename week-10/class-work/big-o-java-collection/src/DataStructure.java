import java.util.*;

public class DataStructure {
    public static void main(String[] args) {
        ArrayList<String> lists = new ArrayList<>();

        lists.add("asd");
        lists.add("ashdjsdhs");

        ArrayList<String> names = new ArrayList<String>();
        names.add("asd");
        names.size();


        LinkedList<String> names2 = new LinkedList<String>();
        names2.add("asd");
        names2.size();

        Vector names3 =  new Vector();
        names3.add("asd");
        names3.size();

        CoolType coolType = new CoolType();
        coolType.add("asd");
        System.out.println(coolType.get(0));
    }
}
