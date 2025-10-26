// Problem 61A: Ultra-Fast Mathematician
// https://codeforces.com/contest/61/problem/A
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Java 21 64bit

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
