// Problem 706B: Interesting drink
// https://codeforces.com/contest/706/problem/B
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Linq;

class Program {
    static void Main() {
        int num_prices = int.Parse(Console.ReadLine());
        int[] drink_prices = Console.ReadLine().Split().Select(int.Parse).OrderBy(x => x).ToArray();
        int num_days = int.Parse(Console.ReadLine());
        for (int i = 0; i < num_days; i++) {
            int money_today = int.Parse(Console.ReadLine());
            int left = 0;
            int right = num_prices;

            while (right > left){
                int mid = left + (right - left) / 2;

                if (drink_prices[mid] <= money_today) {
                    left = mid + 1;
                } else {
                    right = mid;
                }
            }
            Console.WriteLine(left);
        }
    }
}
