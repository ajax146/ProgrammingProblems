// Problem 617A: Elephant
// https://codeforces.com/contest/617/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8


using System;
using System.Linq;

class Program {
    static void Main() {
        int num = int.Parse(Console.ReadLine());
        Console.WriteLine((int)Math.Ceiling((num)/5.0));
    }
}
