// Problem 1760A: Medium Number
// https://codeforces.com/contest/1760/problem/A
// Compiled with: openjdk 25 2025-09-16
// Executed with: javac 25
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int runs = sc.nextInt();
        for (int i = 0; i < runs; i++) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            int c = sc.nextInt();

            if (a < b){
                // Possible cases:
                // 1-2-3, 1-3-2, 2-3-1
                if (a < c){
                    //Possible cases:
                    // 1-2-3, 1-3-2
                    System.out.println(Math.min(b, c));
                } else {
                    //Possible cases:
                    // 2-3-1
                    System.out.println(a);
                }
            } else {
                // Possible cases:
                // 2-1-3, 3-1-2, 3-2-1
                if (a > c) {
                    // Possible cases:
                    // 3-1-2, 3-2-1
                    System.out.println(Math.max(b,c));
                } else {
                    // Possible cases:
                    // 2-1-3
                    System.out.println(a);
                }
            }
        }
        sc.close();
    }
}
