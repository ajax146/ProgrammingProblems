// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: Mono JIT compiler version 6.8.0.105 (Debian 6.8.0.105+dfsg-3.3+deb12u1 Sat Jun 21 16:33:59 UTC 2025)
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
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

        // One int
        int i = scanner.nextInt();
        Console.WriteLine(i);

        // One double
        double a = scanner.nextDouble();
        Console.WriteLine(a);

        // One 64 bit int (long)
        long l = scanner.nextLong();
        Console.WriteLine(l);

        // One word
        string w = scanner.nextWord();
        Console.WriteLine(w);

        // One string/line
        string l2 = scanner.nextString();
        Console.WriteLine(l2);

        // Int array
        List<int> ia = scanner.nextIntArray(true);
        foreach (int x in ia)
            Console.Write(x + " ");
        Console.WriteLine();

        // 64 bit int array
        List<long> la = scanner.nextLongArray();
        foreach (long x in la)
            Console.Write(x + " ");
        Console.WriteLine();
    }
}
