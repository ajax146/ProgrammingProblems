// Problem 1899A: Game with Integers
// https://codeforces.com/contest/1899/problem/A
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
        int num;
        cin >> num;

        if (num % 3 != 0) {
            cout << "First\n";
        } else {
            cout << "Second\n";
        }
    }
}
