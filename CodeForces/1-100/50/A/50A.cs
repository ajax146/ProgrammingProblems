// Problem 50A: Domino piling
// https://codeforces.com/contest/50/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int m = int.Parse(parts[0]);
        int n = int.Parse(parts[1]);

        int answer = (m/2)*n;

        if (m % 2 == 1) {
            answer += (n/2);
        }

        Console.WriteLine(answer);
    }
}
