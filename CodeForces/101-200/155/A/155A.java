// Problem 155A: I_love_\%username\%
// https://codeforces.com/contest/155/problem/A
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Java 21 64bit

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
