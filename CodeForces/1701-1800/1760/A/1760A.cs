// Problem 1760A: Medium Number
// https://codeforces.com/contest/1760/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        for (int i = 0; i < n; i++) {
            string all_input = Console.ReadLine();
            string[] parts = all_input.Split(' ');
            int a = int.Parse(parts[0]);
            int b = int.Parse(parts[1]);
            int c = int.Parse(parts[2]);
            
            if (a < b){
                // Possible cases:
                // 1-2-3, 1-3-2, 2-3-1
                if (a < c){
                    //Possible cases:
                    // 1-2-3, 1-3-2
                    Console.WriteLine(Math.Min(b, c));
                } else {
                    //Possible cases:
                    // 2-3-1
                    Console.WriteLine(a);
                }
            } else {
                // Possible cases:
                // 2-1-3, 3-1-2, 3-2-1
                if (a > c) {
                    // Possible cases:
                    // 3-1-2, 3-2-1
                    Console.WriteLine(Math.Max(b,c));
                } else {
                    // Possible cases:
                    // 2-1-3
                    Console.WriteLine(a);
                }
            }

        }
    }
}
