// Problem 946A: Partition
// https://codeforces.com/contest/946/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8


using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');
        int total = 0;

        for (int i = 0; i < n; i++){
            total += Math.Abs(int.Parse(parts[i]));
        }
        Console.WriteLine(total);
    }
}
