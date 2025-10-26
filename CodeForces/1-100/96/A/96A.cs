// Problem 96A: Football
// https://codeforces.com/contest/96/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string line1 = Console.ReadLine();

        if (line1.Contains("0000000") || line1.Contains("1111111") ) {
            Console.WriteLine("YES");
        } else {
            Console.WriteLine("NO");
        }
    }
}
