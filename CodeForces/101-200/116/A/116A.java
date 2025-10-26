// Problem 116A: Tram
// https://codeforces.com/contest/116/problem/A
// Compiled with: openjdk 25 2025-09-16
// Executed with: javac 25
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int w = sc.nextInt();
        int current_on_tram = 0;
        int max_on_tram = 0;
        for (int i = 0; i < w; i++) {
            current_on_tram -= sc.nextInt();
            current_on_tram += sc.nextInt();
            if (current_on_tram > max_on_tram) {
                max_on_tram = current_on_tram;
            }
        }
        System.out.println(max_on_tram);
        sc.close();
    }
}
