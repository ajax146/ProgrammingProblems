import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Set<Integer> solved_levels = new TreeSet<Integer>();
        Integer n = sc.nextInt();
        Integer p = sc.nextInt();
        for (int i = 0; i < p; i++){
            solved_levels.add(sc.nextInt());
        }

        Integer q = sc.nextInt();
        for (int i = 0; i < q; i++){
            solved_levels.add(sc.nextInt());
        }

        if (solved_levels.size() == n){
            System.out.println("I become the guy.");
        } else{
            System.out.println("Oh, my keyboard!");
        }

        sc.close();
    }
}
