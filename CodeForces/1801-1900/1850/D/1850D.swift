// Problem 1850D: Balanced Round
// https://codeforces.com/contest/1850/problem/D
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var runs = Int(readLine()!)!
for _ in 0...runs-1 {
    let info = readLine()!.split(separator: " ").map { Int($0)! }
    let n = info[0]
    let k = info[1]

    let problem_difficulties = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

    var max_length = 0
    // This is set to 1 as we are counting the number of pairs, so that will always be one less than the number of problems
    var current_length = 1

    if (n == 1) {
        print(0)
        continue
    }

    for indx in 0...n-2 {
        if (k >= problem_difficulties[indx + 1] - problem_difficulties[indx]) {
            current_length += 1
        } else {
            if (current_length > max_length) {
                max_length = current_length
            }
            current_length = 1
        }
    }
    // Check if the final run is longer than the current recorded max
    if (current_length > max_length) {
        max_length = current_length
    }
    print(n-max_length)

}
