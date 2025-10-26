// Problem 230B: T-Primes
// https://codeforces.com/contest/230/problem/B
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C# Mono 6.8

using System;

class Program {
    static void Main() {
        int w = int.Parse(Console.ReadLine());

        string all_numbers = Console.ReadLine();
        string[] numbers = all_numbers.Split(' ');

        bool[] primeFlags = CalculatePrimes();

        for (int i = 0; i < w; i++) {
            long num = long.Parse(numbers[i]);
            double sqrt = Math.Sqrt(num);

            if (sqrt == Math.Floor(sqrt)) {
                if (primeFlags[Convert.ToInt32(Math.Floor(sqrt))] == true) {
                    Console.WriteLine("YES");
                    continue;
                }
            }
            Console.WriteLine("NO");
        }
    }

    static bool[] CalculatePrimes() {
        int limit = 10000000;
        bool[] primeFlag = new bool[limit];
        for (int i = 0; i < limit; i++) {
            primeFlag[i] = true;
        }

        primeFlag[0] = false;
        primeFlag[1] = false;

        for (int i = 2; i * i < limit; i++) {
            if (primeFlag[i]) {
                for (int j = i * i; j < limit; j += i) {
                    primeFlag[j] = false;
                }
            }
        }
        return primeFlag;
    }
}
