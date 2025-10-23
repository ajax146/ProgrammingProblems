import Foundation

var w = Int(readLine() ?? "") ?? 0

for _ in 0...(w-1) {
    var nums = readLine()!.split(separator: " ").map { Int($0)! }
    if nums[0] + nums[1] == nums[2] {
        print("+")
    } else {
        print("-")
    }
}
