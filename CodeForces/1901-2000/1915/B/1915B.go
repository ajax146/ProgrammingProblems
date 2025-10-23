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
