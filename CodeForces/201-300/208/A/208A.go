// Problem 208A: Dubstep
// https://codeforces.com/contest/208/problem/A
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
	var w string
	fmt.Scan(&w)
	var ans string

	for _, word := range strings.Split(w, "WUB") {
		if len(word) > 0 {
			ans += word
			ans += " "
		}
	}

	fmt.Println(strings.TrimSpace(ans))
}
