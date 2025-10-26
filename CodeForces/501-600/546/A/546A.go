// Problem 546A: Soldier and Bananas
// https://codeforces.com/contest/546/problem/A
// Executed with: go version go1.24.4 linux/arm64
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
)

func main() {
	var k, n, w int
	fmt.Scan(&k, &n, &w)

	var total_cost_multi = ((w * (w + 1)) / 2)
	var total_cost = k * total_cost_multi
	var amount_to_borrow = total_cost - n

	if amount_to_borrow > 0 {
		fmt.Println(amount_to_borrow)
	} else {
		fmt.Println(0)
	}
}
