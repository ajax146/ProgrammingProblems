// Problem 1931B: Make Equal
// https://codeforces.com/contest/1931/problem/B
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 29th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int runs;
    cin >> runs;

    for (int i = 0; i < runs; i++) {
        int num;
        cin >> num;

        vector<int> all_nums(num);
        long long sum = 0;
        for (int i = 0; i < num; i++) {
            int temp_val;
            cin >> temp_val;
            all_nums[i] = temp_val;
            sum += temp_val;
        }
        long long average = sum / num;

        long long running_sum = 0;
        int count = 0;
        bool hit = false;
        for (int i = num-1; i > 0; i--) {
            running_sum += all_nums[i];
            count += 1;

            double temp_avg = (double)running_sum / (double)count;
            if (temp_avg > average) {
                hit = true;
                cout << "NO\n";
                break;
            }
        }
        if (!hit) {
            cout << "YES\n";
        }
    }
}
