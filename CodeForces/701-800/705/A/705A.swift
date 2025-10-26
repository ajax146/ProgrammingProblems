// Problem 705A: Hulk
// https://codeforces.com/contest/705/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import Foundation

var w = Int(readLine() ?? "") ?? 0

for index in 1...w{
    // The feelings always start with I
    print("I ", terminator:"")

    // If its an even feeling, print love. Otherwise print hate
    if index % 2 == 0 {
        print("love ", terminator:"")
    } else {
        print("hate ", terminator:"")
    }

    // If this is the last index, print it. Otherwise print that
    if index == w {
        print("it")
    } else {
        print("that ", terminator:"")
    }

}
