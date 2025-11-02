// Problem 888A: Local Extrema
// https://codeforces.com/contest/888/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: November 2nd, 2025
// Codeforces language used: C# Mono 6.8

using System;
using System.Collections.Generic;
using System.Linq;

public class Scanner {
    private Queue<string> buffer = new Queue<string>();

    private void Refill() {
        string line = null;
        do {
            line = Console.ReadLine();
            if (line == null) return;
            line = line.Trim();
        } while (line.Length == 0);

        foreach (var token in line.Split((char[])null, StringSplitOptions.RemoveEmptyEntries))
            buffer.Enqueue(token);
    }

    public int nextInt() {
        if (buffer.Count == 0) Refill();
        return int.Parse(buffer.Dequeue());
    }

    public double nextDouble() {
        if (buffer.Count == 0) Refill();
        return double.Parse(buffer.Dequeue(), System.Globalization.CultureInfo.InvariantCulture);
    }

    public long nextLong() {
        if (buffer.Count == 0) Refill();
        return long.Parse(buffer.Dequeue());
    }

    public string nextWord() { 
        if (buffer.Count == 0) Refill(); 
        return buffer.Dequeue(); 
    }

    public string nextString() {
        if (buffer.Count == 0) Refill(); 
        string val = string.Join(" ", buffer);
        buffer.Clear();
        return val;
    }

    public List<int> nextIntArray(bool sorted = false) {
        if (buffer.Count == 0) Refill();
        var arr = buffer.Select(int.Parse).ToList();
        buffer.Clear();
        if (sorted) arr.Sort();
        return arr;
    }

    public List<long> nextLongArray(bool sorted = false) {
        if (buffer.Count == 0) Refill();
        var arr = buffer.Select(long.Parse).ToList();
        buffer.Clear();
        if (sorted) arr.Sort();
        return arr;
    }
}

public class Program {
    public static void Main() {
        Scanner scanner = new Scanner();
        int n = scanner.nextInt();
        if (n < 3) {
            Console.WriteLine("0");
            return;
        }
        int ans = 0;
        List<int> all_nums = scanner.nextIntArray();
        for (int i = 1; i < n-1; i++) {
            if (all_nums[i] > all_nums[i-1] && all_nums[i] > all_nums[i+1]) {
                ans += 1;
            }
            if (all_nums[i] < all_nums[i-1] && all_nums[i] < all_nums[i+1]) {
                ans += 1;
            }
        }
        Console.WriteLine(ans);
    }
}
