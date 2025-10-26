// Problem 158B: Taxi
// https://codeforces.com/contest/158/problem/B
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int num = int.Parse(Console.ReadLine());
        int[] taxis = Console.ReadLine().Split().Select(int.Parse).ToArray();

        int one = 0;
        int two = 0;
        int ans = 0;

        for (int i = 0; i < num; i++) {
            if (taxis[i] == 1) {
                one += 1;
            } else if (taxis[i] == 2) {
                two += 2;
            } else if (taxis[i] == 3) {
                one -= 1;
                ans += 1;
            } else {
                ans += 1;
            }
        }

        if (one < 0) {
            one = 0;
        }

        ans += (int)Math.Ceiling((one+two)/4.0);
        Console.WriteLine(ans);
    }
}
