// Problem 1715A: Crossmarket
// https://codeforces.com/contest/1715/problem/A
// Executed with: Swift version 6.2 (swift-6.2-RELEASE)
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: November 5th, 2025
// Codeforces language used: Cannot be submitted

import Foundation

class Scanner {
    private var buffer: [String] = []

    private func refill() {
        while buffer.isEmpty {
            guard let line = readLine() else {
                fatalError("EOF reached")
            }
            buffer = line.split(separator: " ").map { String($0) }
        }
    }

    func nextInt() -> Int {
        refill()
        return Int(buffer.removeFirst())!
    }

    func nextDouble() -> Double {
        refill()
        return Double(buffer.removeFirst())!
    }

    func nextLong() -> Int64 {
        refill()
        return Int64(buffer.removeFirst())!
    }

    func nextWord() -> String {
        refill()
        return buffer.removeFirst()
    }

    func nextString() -> String {
        refill()
        let line = buffer.joined(separator: " ")
        buffer.removeAll()
        return line
    }

    func nextIntArray(sorted: Bool = false) -> [Int] {
        refill()
        let arr = buffer.map { Int($0)! }
        buffer.removeAll()
        return sorted ? arr.sorted() : arr
    }

    func nextLongArray(sorted: Bool = false) -> [Int64] {
        refill()
        let arr = buffer.map { Int64($0)! }
        buffer.removeAll()
        return sorted ? arr.sorted() : arr
    }
}

let scanner = Scanner()
let runs = scanner.nextInt()
for _ in 0...runs-1 {
    let n = scanner.nextInt()
    let m = scanner.nextInt()
    // 1-1 is a special case
    if n == 1 && m == 1 {
        print(0)
    } else {
        print(min(n,m)+(n-1)+(m-1))
    }
}
