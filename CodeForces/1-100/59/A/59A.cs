// Problem 59A: Word
// https://codeforces.com/contest/59/problem/A
// Compiled with: Mono JIT compiler version 6.12.0.199 (tarball Fri May  2 12:22:51 UTC 2025)
// Linux version: Linux kernel: 6.17.0-12-generic
// Submitted on: February 5th, 2026
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
        // Declare the scanner
        Scanner scanner = new Scanner();
        string s = scanner.nextString();
        int upper = 0;
        int lower = 0;
        for (int i = 0; i < s.Length; i++) {
            if (Char.IsUpper(s[i])) {
                upper += 1;
            } else {
                lower += 1;
            }
        }
        if (upper > lower) {
            Console.WriteLine(s.ToUpper());
        } else {
            Console.WriteLine(s.ToLower());
        }

    }
}
