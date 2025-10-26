// Problem 96A: Football
// https://codeforces.com/contest/96/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"strings"
)

func main() {
	var w string
	fmt.Scan(&w)

	if strings.Contains(w, "0000000") || strings.Contains(w, "1111111") {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
