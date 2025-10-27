// Problem 1996A: Legs
// https://codeforces.com/contest/1996/problem/A
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
            int n = sc.nextInt();
            System.out.println((n+2)/4);
        }
        sc.close();
    }
}
