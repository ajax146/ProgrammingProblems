// Problem 405A: Gravity Flip
// https://codeforces.com/contest/405/problem/A
// Executed with: go version go1.24.4 linux/arm64
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"slices"
)

func main() {
	var nums int
	fmt.Scan(&nums)
	var array []int
	for i := 0; i < nums; i++ {
		var temp int
		fmt.Scan(&temp)
		array = append(array, temp)
	}
	slices.Sort(array)
	for i := 0; i < nums-1; i++ {
		fmt.Print(array[i])
		fmt.Print(" ")
	}
	fmt.Println(array[nums-1])
}
