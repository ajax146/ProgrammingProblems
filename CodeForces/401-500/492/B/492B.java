// Problem 492B: Vanya and Lanterns
// https://codeforces.com/contest/492/problem/B
// Compiled with: openjdk 17.0.16 2025-07-15
// Executed with: javac 17.0.16
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Java 21 64bit

import java.util.Scanner;
import java.util.Arrays;
 
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int l = sc.nextInt();

        int[] lanterns = new int[n];
        for (int i = 0; i < n; i++) {
            lanterns[i] = sc.nextInt();
        }
        sc.close();

        Arrays.sort(lanterns);
        //Set the max distance to the first lamp, as it needs to illuminate to the end of the street on its own
        double max = (double) lanterns[0];
        for (int i = 0; i < n-1; i++) {
            double look = (double) (lanterns[i+1] - lanterns[i]) / 2.0;
            if (look > max) {
                max = look;
            }
        }

        // Manual checks for last lamp
        if ( (double) (l-lanterns[n-1]) > max) {
            System.out.println((double) l-lanterns[n-1]);
        } else {
            System.out.println(max);
        }
    }
}
