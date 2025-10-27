// Problem 41A: Translation
// https://codeforces.com/contest/41/problem/A
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <cmath>
using namespace std;

int main() {
    string one;
    string two;
    cin >> one;
    cin >> two;

    if (one.size() != two.size()) {
        cout << "NO\n";
        return 0;
    }

    for (int i = 0; i < one.size(); i ++) {
        if (one[i] != two[two.size()-i-1]) {
            cout << "NO\n";
            return 0;
        }
    }
    cout << "YES\n";
}
