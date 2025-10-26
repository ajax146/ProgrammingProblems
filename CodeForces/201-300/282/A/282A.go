// Problem 282A: Bit++
// https://codeforces.com/contest/282/problem/A
// Executed with: go version go1.24.4 linux/arm64
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"strings"
)

func main() {
	var runs int
	fmt.Scan(&runs)

	var ans int

	for i := 0; i < runs; i++ {
		var w string
		fmt.Scan(&w)

		if strings.Contains(w, "++") {
			ans += 1
		} else {
			ans -= 1
		}
	}
	fmt.Println(ans)
}
