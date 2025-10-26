// Problem 677A: Vanya and Fence
// https://codeforces.com/contest/677/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import Foundation

let firstLine = readLine() ?? ""
let parts = firstLine.split(separator: " ").compactMap { Int($0) }
let n = parts[0]
let h = parts[1]

let secondLine = readLine() ?? ""
let a_list = secondLine.split(separator: " ").compactMap { Int($0) }

var answer = n

for index in 0...(n-1) {
    if a_list[index] > h {
        answer += 1
    }
}
print(answer)
