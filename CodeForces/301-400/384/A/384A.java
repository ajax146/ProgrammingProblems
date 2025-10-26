// Problem 384A: Coder
// https://codeforces.com/contest/384/problem/A
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double w = sc.nextDouble();
        double target_lines = w/2;

        String line = "C.".repeat((int) Math.ceil(target_lines));

        System.out.println((int)Math.ceil(target_lines*w));

        for (int i = 0; i < w; i++){
            if (i % 2 != 0) {
                System.out.println(("." + line).substring(0,(int)w));
            } else {
                System.out.println(line.substring(0,(int)w));
            }
        }
        sc.close();
    }
}
