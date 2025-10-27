// Problem 932A: Palindromic Supersequence
// https://codeforces.com/contest/932/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        string input = Console.ReadLine();
        string input_rev = Reverse(input);
        Console.WriteLine(input + input_rev);
    }

    public static string Reverse( string s ) {
        char[] charArray = s.ToCharArray();
        Array.Reverse(charArray);
        return new string(charArray);
    }
}
