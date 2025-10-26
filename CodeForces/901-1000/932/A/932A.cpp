// Problem 932A: Palindromic Supersequence
// https://codeforces.com/contest/932/problem/A
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <string>
#include <bits/stdc++.h>
using namespace std;

int main() {
    string one;
    cin >> one;

    cout << one;
    reverse(one.begin(), one.end());
    cout << one << "\n";
}
