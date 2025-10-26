// Problem 271A: Beautiful Year
// https://codeforces.com/contest/271/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Collections.Generic;

class Program {

    static bool IsAllUnique(string key) {
        string result = string.Empty;
        foreach (char value in key) {
            if (result.IndexOf(value) == -1) {
                result += value;
            }
        }
        if (result.Length == 4) {
            return true;
        }else {
            return false;
        }
    }

    static List<int> ComputeYears() {
        List<int> good_years = new List<int>();
        int year = 1000;
        while (year < 10000) {
            if (IsAllUnique(year.ToString())){
                good_years.Add(year);
            }
            year++;
        }
        return good_years;
        
    }

    static void Main() {
        int year = int.Parse(Console.ReadLine());
        List<int> computed_years = ComputeYears();
        year++;
        while (true) {
            if (computed_years.IndexOf(year) != -1){
                Console.WriteLine(year);
                return;
            }
            year++;
        }
    }
}
