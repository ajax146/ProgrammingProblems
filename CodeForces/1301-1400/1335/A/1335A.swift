// Problem 1335A: Candies and Two Sisters
// https://codeforces.com/contest/1335/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var runs = Int(readLine()!)!

for _ in 0...runs-1 {
    let num = Double(readLine()!)!
    print(Int(floor((num-1.0)/2.0)))
}
