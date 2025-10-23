package main

import (
    "fmt"
)

func main() {
    var cost,coin int
    fmt.Scan(&cost,&coin)

	var attempt int = 1

    for {
		if (cost*attempt) % 10 == 0 || ((cost*attempt)-coin) % 10 == 0{
			fmt.Println(attempt)
			return
		}
		attempt = attempt + 1
	}
}
