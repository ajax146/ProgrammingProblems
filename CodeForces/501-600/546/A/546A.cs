// Problem 546A: Soldier and Bananas
// https://codeforces.com/contest/546/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int k = int.Parse(parts[0]);
        int n = int.Parse(parts[1]);
        int w = int.Parse(parts[2]);

        int total_cost_multi = ((w*(w+1))/2);
        int total_cost = k * total_cost_multi;

        Console.WriteLine(Math.Max(total_cost-n, 0));
    }
}
