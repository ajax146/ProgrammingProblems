// Problem 141A: Amusing Joke
// https://codeforces.com/contest/141/problem/A
// Executed with: go version go1.19.8 linux/amd64
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Go 1.22.2

package main

import (
	"fmt"
	"reflect"
	"sort"
	"strings"
)

func main() {
	var first, second, letters string
	fmt.Scan(&first, &second, &letters)

	all := first + second
	target_chars := strings.Split(all, "")
	sort.Strings(target_chars)

	actual_chars := strings.Split(letters, "")
	sort.Strings(actual_chars)

	if reflect.DeepEqual(target_chars, actual_chars) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
