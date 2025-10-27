// Problem 1335A: Candies and Two Sisters
// https://codeforces.com/contest/1335/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        int runs = int.Parse(Console.ReadLine());
        for (int i = 0; i < runs; i++){
            int candy = int.Parse(Console.ReadLine());
            Console.WriteLine(Math.Floor((candy-1.0) / 2.0));
        }
    }
}
