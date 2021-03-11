import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();
        list.add("asd");
        list.add("jknj");

        ArrayList<String> names = new ArrayList<String>();
        names.add("asd");
        names.size();

        LinkedList<String> names2 = new LinkedList<String>();
        names2.add("asd");
        names2.size();

        Vector names3 =  new Vector();
        names3.add("asd");
        names3.size();









        CoolList coolList =  new CoolList();
        coolList.add("asd");
        System.out.println(coolList.get(0));
    }
}
