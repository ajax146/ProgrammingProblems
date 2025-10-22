import Foundation

if let input = readLine(), let w = Int(input) {
    if w > 2 && w % 2 == 0 {
        print("YES")
    } else {
        print("NO")
    }
}
