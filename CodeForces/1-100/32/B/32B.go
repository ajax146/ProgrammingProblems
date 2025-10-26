// Problem 32B: Borze
// https://codeforces.com/contest/32/problem/B
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"strings"
)

func main() {
	var w string
	fmt.Scan(&w)

	w = strings.Replace(w, "--", "2", -1)
	w = strings.Replace(w, "-.", "1", -1)
	w = strings.Replace(w, ".", "0", -1)
	fmt.Println(w)

}
