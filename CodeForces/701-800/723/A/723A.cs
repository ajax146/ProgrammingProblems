// Problem 723A: The New Year: Meeting Friends
// https://codeforces.com/contest/723/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program
{
    static void Main()
    {

        string all_x = Console.ReadLine();
        string[] parts = all_x.Split(' ');

        int x1 = int.Parse(parts[0]);
        int x2 = int.Parse(parts[1]);
        int x3 = int.Parse(parts[2]);

        int minimum = 400;

        for (int i = 1; i <= 100; i++){
            int total_move = 0;
            total_move += Math.Abs(x1-i);
            total_move += Math.Abs(x2-i);
            total_move += Math.Abs(x3-i);
            if (total_move < minimum){
                minimum = total_move;
            }
        }

        Console.WriteLine(minimum);
    }
}
