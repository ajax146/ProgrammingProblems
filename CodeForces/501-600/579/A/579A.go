// Problem 579A: Raising Bacteria
// https://codeforces.com/contest/579/problem/A
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

	for {
		if w == 0 {
			fmt.Println(ans)
			return
		}

		if w%2 == 0 {
			w /= 2
		} else {
			w -= 1
			w /= 2
			ans += 1
		}
	}
}
