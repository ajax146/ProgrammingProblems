// Problem 1999A: A+B Again?
// https://codeforces.com/contest/1999/problem/A
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
        string number;
        cin >> number;
        cout << (number[0]-'0') + (number[1]-'0') << "\n";
    }
}
