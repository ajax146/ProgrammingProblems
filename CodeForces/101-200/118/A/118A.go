// Problem 118A: String Task
// https://codeforces.com/contest/118/problem/A
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
	w = strings.ToLower(w)

	for i := 0; i < len(w); i++ {
		if !(strings.Contains("aeiouy", string(w[i]))) {
			fmt.Print(".")
			fmt.Print(string(w[i]))
		}
	}
	fmt.Print("\n")
}
