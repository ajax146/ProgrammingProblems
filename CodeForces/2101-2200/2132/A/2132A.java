// Problem 2132A: Homework
// https://codeforces.com/contest/2132/problem/A
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
            int init_size = sc.nextInt();
            sc.nextLine();
            StringBuilder answer = new StringBuilder(sc.nextLine());
            int new_size = sc.nextInt();
            sc.nextLine();
            String new_chars = sc.nextLine();
            String order = sc.nextLine();

            for (int i = 0; i < new_size; i++) {
                if (order.charAt(i) == 'V') {
                    answer.insert(0, new_chars.charAt(i));
                } else {
                    answer.append(new_chars.charAt(i));
                }
            }
            System.out.println(answer.toString());
        }
        sc.close();
    }
}
