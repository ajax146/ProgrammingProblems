// Problem 1807A: Plus or Minus
// https://codeforces.com/contest/1807/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var w = Int(readLine() ?? "") ?? 0

for _ in 0...(w-1) {
    var nums = readLine()!.split(separator: " ").map { Int($0)! }
    if nums[0] + nums[1] == nums[2] {
        print("+")
    } else {
        print("-")
    }
}
