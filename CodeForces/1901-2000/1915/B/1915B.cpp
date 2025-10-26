// Problem 1915B: Not Quite Latin Square
// https://codeforces.com/contest/1915/problem/B
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
#include <string>
using namespace std;

int main() {
    int t;
    cin >> t;

    for(int i = 0; i < (t*3); i++) {
        string input;
        cin >> input;

        if (input.find('?') != string::npos) {
            if (input.find('A') != string::npos) {
                if (input.find('B') != string::npos) {
                    cout << "C";
                } else {
                    cout << "B";
                }
            } else {
                cout << "A";
            }
            cout << "\n";
        }
    }
}
