// Problem 1560A: Dislike of Threes
// https://codeforces.com/contest/1560/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var ansList: [Int] = []
ansList.append(0)
var lastval = 0
for _ in 0...1001 {
    while true {
        lastval += 1
        if lastval % 3 == 0 || lastval % 10 == 3 {
            continue
        }
        ansList.append(lastval)
        break
    }
}

var t = Int(readLine() ?? "") ?? 0

for _ in 0...(t-1) {
    let index = Int(readLine() ?? "") ?? 0
    print(ansList[index])
}
