// Problem 318A: Even Odds
// https://codeforces.com/contest/318/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 24th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var nums = readLine()!.split(separator: " ").map { Int($0)! }
var n = nums[0]
var k = nums[1]

if n % 2 == 1 {
    n += 1
}

if k-1 >= n/2 {
    print((k-(n/2))*2 )
} else {
    print((k-(1))*2+1 )
}
