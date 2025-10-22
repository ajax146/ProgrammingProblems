package main

import (
    "fmt"
)

func main() {
    var w int
    fmt.Scan(&w)
	var ans int

    for {
		if w == 0 {
			fmt.Println(ans)
			return
		}

		if w % 2 == 0 {
			w /= 2
		} else {
			w -= 1
			w /= 2
			ans += 1
		}
	}
}
