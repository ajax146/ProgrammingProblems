// Problem 1899A: Game with Integers
// https://codeforces.com/contest/1899/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program
{
    static void Main()
    {
        int t = int.Parse(Console.ReadLine());

        for (int i = 0; i < t; i++){
            int n = int.Parse(Console.ReadLine());
            if (n % 3 != 0) {
                Console.WriteLine("First");
            } else {
                Console.WriteLine("Second");
            }
        }
    }
}
