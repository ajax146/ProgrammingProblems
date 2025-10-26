// Problem 1915B: Not Quite Latin Square
// https://codeforces.com/contest/1915/problem/B
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
	var runs int
	fmt.Scan(&runs)
	runs *= 3

	for i := 0; i < runs; i++ {
		var input string
		fmt.Scan(&input)
		if strings.Contains(input, "?") {
			if strings.Contains(input, "A") {
				if strings.Contains(input, "B") {
					fmt.Println("C")
				} else {
					fmt.Println("B")
				}
			} else {
				fmt.Println("A")
			}
		}
	}
}
