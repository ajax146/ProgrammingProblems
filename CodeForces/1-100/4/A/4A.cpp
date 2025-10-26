// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
using namespace std;

int main() {
    int w;
    cin >> w;

    if (w > 2 && w % 2 == 0) {
        cout << "YES\n";
    } else {
        cout << "NO\n";
    }
}
