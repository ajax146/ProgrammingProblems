// Problem 1937A: Shuffle Party
// https://codeforces.com/contest/1937/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var runs = Int(readLine()!)!
for _ in 0...runs-1 {
    let size = Double(readLine()!)!
    let logged = Int(floor(log2(size)))
    let power = pow(2, logged)
    print(power)
}
