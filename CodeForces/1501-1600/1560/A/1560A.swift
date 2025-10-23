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
