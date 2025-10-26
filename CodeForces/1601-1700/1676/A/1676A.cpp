// Problem 1676A: Lucky?
// https://codeforces.com/contest/1676/problem/A
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
#include <string>
using namespace std;

int main() {
    int t;
    cin >> t;

    for(int i = 0; i < t; i++) {
        string ticket;
        cin >> ticket;
        int total = 0;
        total += ticket[0];
        total += ticket[1];
        total += ticket[2];
        total -= ticket[3];
        total -= ticket[4];
        total -= ticket[5];

        if (total == 0) {
            cout << "YES\n";
        } else{
            cout << "NO\n";
        }
    }
}
