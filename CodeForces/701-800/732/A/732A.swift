// Problem 732A: Buy a Shovel
// https://codeforces.com/contest/732/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

let nums = readLine()!.split(separator: " ").map { Int($0)! }
let (cost, coin) = (nums[0], nums[1])

var attempt = 1

while true {
    
    if (cost*attempt)%10 == 0 || ((cost*attempt)-coin)%10 == 0 {
        print(attempt)
        break
    }
    attempt = attempt + 1
}
