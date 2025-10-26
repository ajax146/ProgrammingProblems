// Problem 584A: Olesya and Rodion
// https://codeforces.com/contest/584/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int n = int.Parse(parts[0]);
        string t = parts[1];
        n-=1;
        if (t == "10") {
            n-=1;
        }
        if (n < 0) {
            Console.WriteLine(-1);
            return;
        }

        string zeros = new string('0', n);

        Console.WriteLine(t + zeros);
    }
}
