// Problem 116A: Tram
// https://codeforces.com/contest/116/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        int curr_tram = 0;
        int max_tram = 0;

        for (int i = 0; i < n; i++){
            string[] parts = Console.ReadLine().Split();
            int exit = int.Parse(parts[0]);
            int enter = int.Parse(parts[1]);

            curr_tram -= exit;
            curr_tram += enter;
            if (curr_tram > max_tram) {
                max_tram = curr_tram;
            }
        }
        Console.WriteLine(max_tram);
    }
}
