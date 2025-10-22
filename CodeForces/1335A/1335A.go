package main

import (
    "fmt"
    "math"
)

func main() {
    var w int
    fmt.Scan(&w)

	for i := 1; i <= w; i++ {
		var num float64
		fmt.Scan(&num)
		fmt.Printf("%v\n", int(math.Abs(math.Ceil((num/2.0)-1))))		
	}
}
