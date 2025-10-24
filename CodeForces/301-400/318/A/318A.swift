import Foundation

var nums = readLine()!.split(separator: " ").map { Int($0)! }
var n = nums[0]
var k = nums[1]

if n % 2 == 1 {
    n += 1
}

if k-1 >= n/2 {
    print((k-(n/2))*2 )
} else {
    print((k-(1))*2+1 )
}
