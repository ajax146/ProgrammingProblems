// Problem 110A: Nearly Lucky Number
// https://codeforces.com/contest/110/problem/A
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
using namespace std;

int main() {
    string input_str;
    cin >> input_str;

    int count = 0;
    
    for (int i = 0; i < input_str.size(); i ++) {
        if (input_str[i] == '4' || input_str[i] == '7') {
            count += 1;
            if (count > 7) {
                cout << "NO\n";
                return 0;
            }
        }
    }
    if (count == 4 || count == 7) {
        cout << "YES\n";
    } else {
        cout << "NO\n";
    }
}
