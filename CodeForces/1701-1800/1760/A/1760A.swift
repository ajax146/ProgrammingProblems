// Problem 1760A: Medium Number
// https://codeforces.com/contest/1760/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var runs = Int(readLine()!)!

for _ in 0...runs-1 {
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let a = nums[0]
    let b = nums[1]
    let c = nums[2]
    
    if (a < b){
        if (a < c){
            print(min(b, c))
        } else {
            print(a)
        }
    } else {
        if (a > c) {
            print(max(b, c))
        } else {
            print(a)
        }
    }

}

