// Problem 2123A: Blackboard Game
// https://codeforces.com/contest/2123/problem/A
// Executed with: go version go1.24.4 linux/arm64
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
)

func main() {
	var runs int
	fmt.Scan(&runs)

	for i := 0; i < runs; i++ {
		var input int
		fmt.Scan(&input)
		if input%4 == 0 {
			fmt.Println("Bob")
		} else {
			fmt.Println("Alice")
		}
	}
}
