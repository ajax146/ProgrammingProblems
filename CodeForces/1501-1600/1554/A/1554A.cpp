// Problem 1554A: Cherry
// https://codeforces.com/contest/1554/problem/A
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
        long long size;
        cin >> size;

        vector<long long> all_nums(size);
        for (int i = 0; i < size; i++)
            cin >> all_nums[i];
        
        long long max_val = 0;
        for (int i = 0; i < size-1; i++) {
            long long temp_val = all_nums[i+1] * all_nums[i];
            if (temp_val > max_val) {
                max_val = temp_val;
            }
        }
        cout << max_val << "\n";
    }
}
