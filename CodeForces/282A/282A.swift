import Foundation

var n = Int(readLine() ?? "") ?? 0
var ans = 0

for _ in 0...(n-1) {
    let s = readLine() ?? ""
    if s.contains("--") {
        ans -= 1
    } else {
        ans += 1
    }
}
print(ans)
