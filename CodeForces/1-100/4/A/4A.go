// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
)

func main() {
	var w int
	fmt.Scan(&w)

	if w > 2 && w%2 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
