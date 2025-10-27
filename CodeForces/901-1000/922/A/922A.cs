// Problem 922A: Cloning Toys
// https://codeforces.com/contest/922/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int[] nums = Console.ReadLine().Split().Select(int.Parse).ToArray();

        int clone = nums[0];
        int original = nums[1];

        int original_to_make = original-1;
        int clone_to_make = clone-original_to_make;
        
        if (original_to_make < 0 || clone_to_make < 0) {
            // Cannot make negative originals or clones
            Console.WriteLine("NO");
        } else if (clone_to_make % 2 == 1) {
            // Cannot make an odd number of clones
            Console.WriteLine("NO");
        } else if (original_to_make == 0 && clone_to_make != 0) {
            // Cannot make clones without making at least one original
            Console.WriteLine("NO");
        } else {
            // Otherwise, we should be good to make them
            Console.WriteLine("YES");
        }
    }
}
