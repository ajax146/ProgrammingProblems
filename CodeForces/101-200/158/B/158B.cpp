// Problem 158B: Taxi
// https://codeforces.com/contest/158/problem/B
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n;
    cin >> n;

    // We don't need to keep track of fours separately here
    // Every group of 4 fills an entire taxi, so any groups of 4 add one taxi need
    int ones = 0, twos = 0, threes = 0, total_taxi = 0;

    for(int i = 0; i < n; i++) {
        int input;
        cin >> input;
        if (input == 1){
             ones++;
        } else if (input == 2) {
            twos++;
        } else if (input == 3) {
            threes++;
        } else {
            total_taxi++;
        }
    }

    // Every group of three must have its own taxi
    // A group of one can ride with them
    total_taxi += threes;
    // If there are more groups of one than three, ones will still be positive
    // Otherwise, set ones to zero.
    ones = max(ones-threes, 0);

    // There is no set of ones+twos that would require anything special
    // Assume all are groups of one for this purpose
    total_taxi += ceil(((ones+(twos*2.0))/4));

    cout << total_taxi << "\n";
}
