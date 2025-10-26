// Problem 467A: George and Accommodation
// https://codeforces.com/contest/467/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
)

func main() {
	var w int
	fmt.Scan(&w)
	var ans int

	for i := 1; i <= w; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		if b-a >= 2 {
			ans += 1
		}
	}
	fmt.Println(ans)
}
