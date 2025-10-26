// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int w = sc.nextInt();
        if (w > 2 && w % 2 == 0) {
            System.out.println("YES");
        }else {
            System.out.println("NO");
        }
        sc.close();
    }
}
