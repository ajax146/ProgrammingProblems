package main

import (
    "fmt"
	"strings"
)

func main() {
    var w string
    fmt.Scan(&w)

	if strings.Contains(w, "0000000") || strings.Contains(w, "1111111"){
		fmt.Println("YES");
	} else {
		fmt.Println("NO");
	}
}
