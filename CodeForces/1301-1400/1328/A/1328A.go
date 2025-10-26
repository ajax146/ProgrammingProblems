// Problem 1328A: Divisibility Problem
// https://codeforces.com/contest/1328/problem/A
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
		var a, b int
		fmt.Scan(&a, &b)

		if a%b == 0 {
			fmt.Println(0)
			continue
		}
		if b > a {
			fmt.Println(b - a)
			continue
		}

		rawDiv := float64(float64(a) / float64(b))

		fmt.Println((int(math.Ceil(rawDiv)) * b) - a)
		continue

	}

}
