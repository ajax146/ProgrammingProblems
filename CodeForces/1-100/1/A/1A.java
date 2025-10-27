// Problem 1A: Theatre Square
// https://codeforces.com/contest/1/problem/A
// Compiled with: openjdk 25 2025-09-16
// Executed with: javac 25
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double n = sc.nextDouble();
        double m = sc.nextDouble();
        double a = sc.nextDouble();
        sc.close();

        long tiles_high = (long) Math.ceil(n/a);
        long tiles_wide = (long) Math.ceil(m/a);

        System.out.println(tiles_high*tiles_wide);
    }
}
