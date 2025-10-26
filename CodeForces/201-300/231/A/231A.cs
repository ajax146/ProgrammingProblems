// Problem 231A: Team
// https://codeforces.com/contest/231/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int runs = int.Parse(Console.ReadLine());
        int total = 0;
        for (int i = 0; i < runs; i++) {
            int w = Console.ReadLine().Split().Select(int.Parse).ToArray().Sum();
            if (w >= 2) {
                total += 1;
            }
        }
        Console.WriteLine(total);
    }
}
