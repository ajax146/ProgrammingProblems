// Problem 1352A: Sum of Round Numbers
// https://codeforces.com/contest/1352/problem/A
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

	for i := 0; i < runs; i++ {
		var input string
		fmt.Scan(&input)

		var count int
		var ans string
		for j := (len(input) - 1); j >= 0; j-- {
			var inspect string
			inspect = string(input[j])
			if inspect != "0" {
				ans += inspect
				ans += strings.Repeat("0", (len(input)-1)-j)
				ans += " "
				count += 1
			}
		}
		fmt.Println(count)
		fmt.Println(ans)
	}
}
