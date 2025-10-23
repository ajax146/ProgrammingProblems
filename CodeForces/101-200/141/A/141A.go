package main

import (
    "fmt"
    "sort"
    "strings"
	"reflect"
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
