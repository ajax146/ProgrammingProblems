// Problem 1154A: Restoring Three Numbers
// https://codeforces.com/contest/1154/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var nums = readLine()!.split(separator: " ").map { Int($0)! }

nums.sort()
print(nums[3]-nums[2], nums[3]-nums[1], nums[3]-nums[0])
