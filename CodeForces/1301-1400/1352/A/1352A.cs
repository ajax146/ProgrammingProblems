// Problem 1352A: Sum of Round Numbers
// https://codeforces.com/contest/1352/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Text;
using System.Collections.Generic;

class Program {
    static void Main() {
        int t = int.Parse(Console.ReadLine());

        for (int i = 0; i < t; i++) {
            String num = Console.ReadLine();
            StringBuilder someString = new StringBuilder(Reverse(num));
            List<String> nums = new List<String>();
            
            for (int j = 0; j < someString.Length; j++){
                if (someString[j] != '0'){
                    nums.Add(Reverse(someString.ToString(0, j+1)));
                    someString[j] = '0';
                }
            }
            Console.WriteLine(nums.Count);
            Console.WriteLine(string.Join(" ", nums));
        }

    }

    public static string Reverse( string s ) {
        char[] charArray = s.ToCharArray();
        Array.Reverse(charArray);
        return new string(charArray);
    }
}
