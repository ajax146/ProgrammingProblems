// Problem 1650A: Deletions of Two Adjacent Letters
// https://codeforces.com/contest/1650/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int runs = int.Parse(Console.ReadLine());
        for (int run = 0; run < runs; run++) {
            string full_string = Console.ReadLine();
            string target_string = Console.ReadLine();

            bool hit = false;

            for (int i = 0; i < full_string.Length; i++) {
                if (i % 2 == 0 && full_string[i] == target_string[0]) {
                    Console.WriteLine("YES");
                    hit = true;
                    break;
                }
            }
            if (!hit) {
                Console.WriteLine("NO");
            }
        }
    }
}
