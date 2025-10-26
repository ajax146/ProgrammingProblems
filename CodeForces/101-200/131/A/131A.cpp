// Problem 131A: cAPS lOCK
// https://codeforces.com/contest/131/problem/A
// Compiled with: g++ (Debian 12.2.0-14+deb12u1) 12.2.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 24th, 2025
// Codeforces language used: C++23 (GCC 14-64, msys2)

#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main() {
    string original_text;
    cin >> original_text;
    string all_uppercase = original_text;
    transform(all_uppercase.begin(), all_uppercase.end(), all_uppercase.begin(), ::toupper);
    string all_lowercase = original_text;
    transform(all_lowercase.begin(), all_lowercase.end(), all_lowercase.begin(), ::tolower);

    // Case 1: All letters are caps
    if (original_text == all_uppercase) {
        cout << all_lowercase << "\n";
        return 0;
    }

    // Case 2: All letters except first are caps
    if (original_text.substr(1, original_text.size() - 1) == all_uppercase.substr(1, all_uppercase.size() - 1)) {
        cout << all_uppercase.substr(0, 1) << all_lowercase.substr(1, all_lowercase.size() - 1) << "\n";
        return 0;
    }

    // Case 3, leave this shit alone
    cout << original_text << "\n";
}
