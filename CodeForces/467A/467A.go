package main

import (
    "fmt"
)

func main() {
    var w int
    fmt.Scan(&w)
	var ans int

    for i := 1; i <= w; i++ {
		var a,b int
		fmt.Scan(&a,&b)
		if b-a >= 2 {
			ans += 1
		}
	}
	fmt.Println(ans)
}
