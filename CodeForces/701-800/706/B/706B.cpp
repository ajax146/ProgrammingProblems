// Problem 706B: Interesting drink
// https://codeforces.com/contest/706/problem/B
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 29th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int num_prices;
    cin >> num_prices;

    vector<int> drink_prices(num_prices);
    for (int i = 0; i < num_prices; i++)
        cin >> drink_prices[i];
    sort(drink_prices.begin(), drink_prices.end());

    int runs;
    cin >> runs;

    for (int i = 0; i < runs; i++) {
        int money;
        cin >> money;

        int left = 0;
        int right = num_prices;

        while (right > left){
            int mid = left + (right - left) / 2;

            if (drink_prices[mid] <= money) {
                left = mid + 1;
            } else {
                right = mid;
            }
        }
        cout << left << "\n";
    }
}
