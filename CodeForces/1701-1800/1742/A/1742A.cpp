// Problem 1742A: Plus or Minus
// https://codeforces.com/contest/1742/problem/A
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
    cin >> n;

    for (int i = 0; i < n; i++) {
        vector<int> arr(3);
        for(int i = 0; i < 3; i++) {
            cin >> arr[i];
        }
        sort(arr.begin(), arr.end()); 
        if (arr[0] + arr[1] == arr[2]) {
            cout << "YES\n";
        } else {
            cout << "NO\n";
        }
    }
    
}
