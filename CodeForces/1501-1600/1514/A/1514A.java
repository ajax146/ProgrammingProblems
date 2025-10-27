// Problem 1514A: Perfectly Imperfect Array
// https://codeforces.com/contest/1514/problem/A
// Compiled with: openjdk 25 2025-09-16
// Executed with: javac 25
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int runs = sc.nextInt();
        for (int run = 0; run < runs; run++) {
            int nums = sc.nextInt();
            boolean hit = false;
            for (int i = 0; i < nums; i++) {
                double input = sc.nextDouble();
                if (!hit && Math.sqrt(input) != Math.floor(Math.sqrt(input))) {
                    System.out.println("YES");
                    hit = true;                
                }
            }
            if (!hit) {
                System.out.println("NO");
            }
        }
        sc.close();
    }
}
