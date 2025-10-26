// Problem 492B: Vanya and Lanterns
// https://codeforces.com/contest/492/problem/B
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int n;
    long l;
    cin >> n;
    cin >> l;

    vector<long> lanterns(n);
    for(int i = 0; i < n; i++) {
        cin >> lanterns[i];
    }
    sort(lanterns.begin(), lanterns.end()); 

    double max = lanterns[0];
    for (int i = 0; i < n-1; i++) {
        double look = (double) (lanterns[i+1] - lanterns[i]) / 2.0;
        if (look > max) {
            max = look;
        }
    }

    if ( (double) (l-lanterns[n-1]) > max) {
        cout << fixed << (double) l-lanterns[n-1] << "\n";
    } else {
        cout << fixed << max << "\n";
    }
}
