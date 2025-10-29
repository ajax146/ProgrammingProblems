// Problem 1345A: Puzzle Pieces
// https://codeforces.com/contest/1345/problem/A
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 29th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <vector>
using namespace std;

int main() {
    int runs;
    cin >> runs;

    for (int i = 0; i < runs; i++) {
        int n;
        cin >> n;
        int m;
        cin >> m;
        
        if (n == 1 || m == 1 || (n == 2 && m == 2)) {
            cout << "YES\n";
        } else {
            cout << "NO\n";
        }
    }
}
