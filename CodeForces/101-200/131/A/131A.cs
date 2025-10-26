// Problem 131A: cAPS lOCK
// https://codeforces.com/contest/131/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string input_str = Console.ReadLine();
        string input_all_upper = input_str.ToUpper();

        if (input_all_upper == input_str) {
            Console.WriteLine(input_str.ToLower());
        } else if (input_all_upper.Substring(1) == input_str.Substring(1)) {
            Console.WriteLine(input_str.Substring(0,1).ToUpper() + input_all_upper.Substring(1).ToLower());
        } else {
            Console.WriteLine(input_str);
        }
    }
}
