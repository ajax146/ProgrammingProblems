import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        int lowest = sc.nextInt();
        int highest = lowest;

        int answer = 0;
        for (int i = 1; i < n; i++) {
            int nextScore = sc.nextInt();
            if (nextScore > lowest) {
                answer++;
                lowest = nextScore;
            } else if (nextScore < highest) {
                answer++;
                highest = nextScore;
            }
        }
        System.out.println(answer);
        sc.close();
    }
}
