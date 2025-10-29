// Problem 1537A: Arithmetic Array
// https://codeforces.com/contest/1537/problem/A
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
        int number;
        cin >> number;
        int sum = 0;
        
        for (int i = 0; i < number; i++) {
            int temp;
            cin >> temp;
            sum += temp;
        }
        if (sum == number) {
            cout << "0\n";
        } else if (number > sum) {
            cout << "1\n";
        } else {
            cout << sum-number << "\n";
        }
    }
}
