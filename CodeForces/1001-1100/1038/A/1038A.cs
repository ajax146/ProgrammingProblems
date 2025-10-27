// Problem 1038A: Equality
// https://codeforces.com/contest/1038/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int[] input_nums = Console.ReadLine().Split().Select(int.Parse).ToArray();
        string input_str = Console.ReadLine();
        int n = input_nums[0];
        int k = input_nums[1];

        int[] frequency = new int[k];

        for (int i = 0; i < n; i++) {
            frequency[input_str[i] - 'A'] += 1;
        }

        int min_value = n+1;
        for (int i = 0; i < k; i++) {
            if (frequency[i] < min_value) {
                min_value = frequency[i];
            }
        }
        Console.WriteLine(min_value*k);


    }
}
