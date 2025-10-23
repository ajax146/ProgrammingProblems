import java.util.Scanner;
import java.util.Arrays;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int l = sc.nextInt();

        int[] lanterns = new int[n];
        for (int i = 0; i < n; i++) {
            lanterns[i] = sc.nextInt();
        }
        sc.close();

        Arrays.sort(lanterns);
        //Set the max distance to the first lamp, as it needs to illuminate to the end of the street on its own
        double max = (double) lanterns[0];
        for (int i = 0; i < n-1; i++) {
            double look = (double) (lanterns[i+1] - lanterns[i]) / 2.0;
            if (look > max) {
                max = look;
            }
        }

        // Manual checks for last lamp
        if ( (double) (l-lanterns[n-1]) > max) {
            System.out.println((double) l-lanterns[n-1]);
        } else {
            System.out.println(max);
        }
    }
}
