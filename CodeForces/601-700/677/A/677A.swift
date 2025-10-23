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
