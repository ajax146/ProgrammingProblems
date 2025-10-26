// Problem 281A: Word Capitalization
// https://codeforces.com/contest/281/problem/A
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder input = new StringBuilder(sc.nextLine());
        
        if (!(Character.isUpperCase(input.charAt(0)))) {
            input.setCharAt(0, Character.toUpperCase(input.charAt(0)));
        }
        System.out.println(input.toString());
        sc.close();
    }
}
