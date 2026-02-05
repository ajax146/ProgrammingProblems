// Problem 705A: Hulk
// https://codeforces.com/contest/705/problem/A
// Compiled with: openjdk 25.0.2 2026-01-20
// Executed with: javac 25.0.2
// Linux version: Linux kernel: 6.17.0-12-generic
// Submitted on: February 4th, 2026
// Codeforces language used: Java 21 64bit

import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        // Declare the scanner
        Scanner scanner = new Scanner();
        int n = scanner.nextInt();

        System.out.print("I hate ");
        int index = 1;

        while (index < n) {
            if (index % 2 == 0) {
                System.out.print("that I hate ");
            } else {
                System.out.print("that I love ");
            }
            index += 1;
        }

        System.out.println("it");
    }
}

class Scanner {
    private BufferedReader br;
    private StringTokenizer st;

    public Scanner() {
        br = new BufferedReader(new InputStreamReader(System.in));
        st = null;
    }

    private void refill() {
        try {
            while (st == null || !st.hasMoreTokens()) {
                String line = br.readLine();
                if (line == null) throw new RuntimeException("End of input");
                st = new StringTokenizer(line);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public int nextInt() {
        refill();
        return Integer.parseInt(st.nextToken());
    }

    public double nextDouble() {
        refill();
        return Double.parseDouble(st.nextToken());
    }

    public long nextLong() {
        refill();
        return Long.parseLong(st.nextToken());
    }

    public String nextWord() {
        refill();
        return st.nextToken();
    }

    public String nextString() {
        refill();
        StringBuilder sb = new StringBuilder();
        while (st.hasMoreTokens()) {
            sb.append(st.nextToken());
            if (st.hasMoreTokens()) sb.append(" ");
        }
        st = null;
        return sb.toString();
    }

    public int[] nextIntArray(boolean sorted) {
        refill();
        List<Integer> arrList = new ArrayList<>();
        while (st.hasMoreTokens()) {
            arrList.add(Integer.parseInt(st.nextToken()));
        }
        st = null;
        int[] arr = arrList.stream().mapToInt(Integer::intValue).toArray();
        if (sorted) Arrays.sort(arr);
        return arr;
    }

    public long[] nextLongArray(boolean sorted) {
        refill();
        List<Long> arrList = new ArrayList<>();
        while (st.hasMoreTokens()) {
            arrList.add(Long.parseLong(st.nextToken()));
        }
        st = null;
        long[] arr = arrList.stream().mapToLong(Long::longValue).toArray();
        if (sorted) Arrays.sort(arr);
        return arr;
    }
}

