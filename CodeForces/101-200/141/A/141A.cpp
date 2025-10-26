// Problem 141A: Amusing Joke
// https://codeforces.com/contest/141/problem/A
// Compiled with: g++ (Ubuntu 15.2.0-4ubuntu4) 15.2.0
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 25th, 2025
// Codeforces language used: GNU G++23 14.2 (64 bit, msys2)

#include <iostream>
#include <string>
using namespace std;

int main() {
    string one;
    cin >> one;
    string two;
    cin >> two;
    string full;
    cin >> full;
    string correct = one + two;

    int letter_counts[26] = {};
    int value_of_a = 'A';

    for(char& c : correct) {
        letter_counts[c - value_of_a] += 1;
    }

    for(char& c : full) {
        letter_counts[c - value_of_a] -= 1;
    }

    for(int i = 0; i < 26; i++){
        if (letter_counts[i] != 0) {
            cout << "NO\n";
            return 0;
        }
    }
    cout << "YES\n";
}
