package main

import (
    "fmt"
	"math"
)

func main() {
    var w int
    fmt.Scan(&w)

	for i := 1; i <= w; i++ {
		var a,b int
		fmt.Scan(&a,&b)

		if a % b == 0{
			fmt.Println(0)
			continue
		}
		if b > a{
			fmt.Println(b-a)
			continue
		}

		rawDiv := float64(float64(a)/float64(b))

		fmt.Println((int(math.Ceil(rawDiv))*b)-a)
		continue

    }

}
