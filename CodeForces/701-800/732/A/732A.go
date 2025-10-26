// Problem 732A: Buy a Shovel
// https://codeforces.com/contest/732/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
)

func main() {
	var cost, coin int
	fmt.Scan(&cost, &coin)

	var attempt int = 1

	for {
		if (cost*attempt)%10 == 0 || ((cost*attempt)-coin)%10 == 0 {
			fmt.Println(attempt)
			return
		}
		attempt = attempt + 1
	}
}
