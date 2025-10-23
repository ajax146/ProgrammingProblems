import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double w = sc.nextDouble();
        double target_lines = w/2;

        String line = "C.".repeat((int) Math.ceil(target_lines));

        System.out.println((int)Math.ceil(target_lines*w));

        for (int i = 0; i < w; i++){
            if (i % 2 != 0) {
                System.out.println(("." + line).substring(0,(int)w));
            } else {
                System.out.println(line.substring(0,(int)w));
            }
        }
        sc.close();
    }
}
