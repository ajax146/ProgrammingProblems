// Problem 1335A: Candies and Two Sisters
// https://codeforces.com/contest/1335/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Go 1.22.2

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
