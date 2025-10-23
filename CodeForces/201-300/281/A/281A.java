import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder input = new StringBuilder(sc.nextLine());
        
        if (!(Character.isUpperCase(input.charAt(0)))) {
            input.setCharAt(0, Character.toUpperCase(input.charAt(0)));
        }
        System.out.println(input.toString());
        sc.close();
    }
}
