// Problem 677A: Vanya and Fence
// https://codeforces.com/contest/677/problem/A
// Compiled with: openjdk 25 2025-09-16
// Executed with: javac 25
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int num = sc.nextInt();
        int height = sc.nextInt();

        int ans = 0;

        for (int i = 0; i < num; i++) {
            int input = sc.nextInt();
            ans += 1;
            if (input > height) {
                ans += 1;
            }
        }
        sc.close();
        System.out.println(ans);
    }
}
