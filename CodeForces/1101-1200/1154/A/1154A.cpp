// Problem 1154A: Restoring Three Numbers
// https://codeforces.com/contest/1154/problem/A
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    vector<int> arr(4);
    for(int i = 0; i < 4; i++)
        cin >> arr[i];

    // a+b+c must be the largest value, since a,b,c are all positive
    // And since a+b+c - b+c = a, we can just subtract the other 3 in any order
    sort(arr.begin(), arr.end()); 
    cout << arr[3] - arr[2];
    cout << " ";
    cout << arr[3] - arr[1];
    cout << " ";
    cout << arr[3] - arr[0];
    cout << " ";
    cout << "\n";
}
