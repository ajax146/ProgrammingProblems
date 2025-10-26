// Problem 59A: Word
// https://codeforces.com/contest/59/problem/A
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
	var input_str string
	fmt.Scan(&input_str)
	var running int
	for i := 0; i < len(input_str); i++ {
		var to_check string = string(input_str[i])
		if to_check == strings.ToUpper(to_check) {
			running += 1
		} else {
			running -= 1
		}
	}

	if running > 0 {
		fmt.Println(strings.ToUpper(input_str))
	} else {
		fmt.Println(strings.ToLower(input_str))
	}
}
