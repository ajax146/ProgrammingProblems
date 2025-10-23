import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder answer = new StringBuilder("");
        String num1 = sc.nextLine();
        String num2 = sc.nextLine();

        for(int i = 0; i < num1.length(); i++){
            if (num1.charAt(i) == num2.charAt(i)){
                answer.append("0");
            }else{
                answer.append("1");
            }
        }
        System.out.println(answer.toString());
        sc.close();
    }
}
