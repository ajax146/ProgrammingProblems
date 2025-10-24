package main

import (
    "fmt"
	"strings"
)

func main() {
    var w string
    fmt.Scan(&w)
	w = strings.ToLower(w)
	//97, 101, 105, 111, 117, 121

	for i := 0; i < len(w); i++ {
		if !(strings.Contains("aeiouy", string(w[i]))) {
			fmt.Print(".")
			fmt.Print(string(w[i]))
		}
	}
	fmt.Print("\n")
}
