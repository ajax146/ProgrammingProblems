// Problem 112A: Petya and Strings
// https://codeforces.com/contest/112/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 21st, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"strings"
)

func main() {
	var sA, sB string
	fmt.Scan(&sA, &sB)
	sA = strings.ToLower(sA)
	sB = strings.ToLower(sB)

	if sA == sB {
		fmt.Println(0)
	} else if sA > sB {
		fmt.Println(1)
	} else if sB > sA {
		fmt.Println(-1)
	}
}
