// Problem 61A: Ultra-Fast Mathematician
// https://codeforces.com/contest/61/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string line1 = Console.ReadLine();
        string line2 = Console.ReadLine();

        for (int i = 0; i < line1.Length; i++) {
            if (line1[i] == line2[i]) {
                Console.Write(0);
            } else {
                Console.Write(1);
            }
        }
        Console.Write("\n");
    }
}
