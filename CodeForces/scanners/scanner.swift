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
