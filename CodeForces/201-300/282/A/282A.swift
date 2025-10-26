// Problem 282A: Bit++
// https://codeforces.com/contest/282/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var n = Int(readLine() ?? "") ?? 0
var ans = 0

for _ in 0...(n-1) {
    let s = readLine() ?? ""
    if s.contains("--") {
        ans -= 1
    } else {
        ans += 1
    }
}
print(ans)
