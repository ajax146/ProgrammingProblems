package main

import (
    "fmt"
	"strings"
)

func main() {
    var sA,sB string
    fmt.Scan(&sA, &sB)
	sA = strings.ToLower(sA)
	sB = strings.ToLower(sB)

	if sA == sB {
		fmt.Println(0)
	} else if sA > sB {
		fmt.Println(1)
	} else if sB > sA {
		fmt.Println(-1)
	}	
}