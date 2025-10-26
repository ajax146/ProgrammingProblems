// Problem 50A: Domino piling
// https://codeforces.com/contest/50/problem/A
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
using namespace std;

int main() {
    int m, n;
    cin >> m;
    cin >> n;

    // Figure out the max number of boards in the m direction
    int max_m = m/2;
    // Stack that many tiles all the way up in the n direction
    int ans = max_m * n;

    // If m is odd, we can stack another row of tiles
    if (m % 2 == 1) {
        ans += (n/2);
    }
    cout << ans << "\n";
}
