package main

import (
    "fmt"
	"strings"
)

func main() {
    var w string
    fmt.Scan(&w)

	w = strings.Replace(w, "--", "2", -1)
	w = strings.Replace(w, "-.", "1", -1)
	w = strings.Replace(w, ".", "0", -1)
	fmt.Println(w)

}
