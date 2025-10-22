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
