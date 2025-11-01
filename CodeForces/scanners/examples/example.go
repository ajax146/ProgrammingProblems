// Example usage of the scanner class in go.

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Scanner struct {
	reader *bufio.Reader
	buffer []string
}

// NewScanner creates a new scanner instance.
func NewScanner() *Scanner {
	return &Scanner{
		reader: bufio.NewReader(os.Stdin),
		buffer: []string{},
	}
}

// refill reads a non-empty line and tokenizes it.
func (s *Scanner) refill() {
	for len(s.buffer) == 0 {
		line, err := s.reader.ReadString('\n')
		if err != nil {
			return
		}
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}
		s.buffer = strings.Fields(line)
	}
}

func (s *Scanner) nextInt() int {
	if len(s.buffer) == 0 {
		s.refill()
	}
	val, _ := strconv.Atoi(s.buffer[0])
	s.buffer = s.buffer[1:]
	return val
}

func (s *Scanner) nextDouble() float64 {
	if len(s.buffer) == 0 {
		s.refill()
	}
	val, _ := strconv.ParseFloat(s.buffer[0], 64)
	s.buffer = s.buffer[1:]
	return val
}

func (s *Scanner) nextLong() int64 {
	if len(s.buffer) == 0 {
		s.refill()
	}
	val, _ := strconv.ParseInt(s.buffer[0], 10, 64)
	s.buffer = s.buffer[1:]
	return val
}

func (s *Scanner) nextWord() string {
	if len(s.buffer) == 0 {
		s.refill()
	}
	word := s.buffer[0]
	s.buffer = s.buffer[1:]
	return word
}

func (s *Scanner) nextString() string {
	if len(s.buffer) == 0 {
		s.refill()
	}
	val := strings.Join(s.buffer, " ")
	s.buffer = []string{}
	return val
}

func (s *Scanner) nextIntArray(sorted bool) []int {
	if len(s.buffer) == 0 {
		s.refill()
	}
	arr := make([]int, len(s.buffer))
	for i, tok := range s.buffer {
		arr[i], _ = strconv.Atoi(tok)
	}
	s.buffer = []string{}
	if sorted {
		sort.Ints(arr)
	}
	return arr
}

func (s *Scanner) nextLongArray(sorted bool) []int64 {
	if len(s.buffer) == 0 {
		s.refill()
	}
	arr := make([]int64, len(s.buffer))
	for i, tok := range s.buffer {
		arr[i], _ = strconv.ParseInt(tok, 10, 64)
	}
	s.buffer = []string{}
	if sorted {
		sort.Slice(arr, func(i, j int) bool { return arr[i] < arr[j] })
	}
	return arr
}

func main() {
	// Declare the scanner
	scanner := NewScanner()

	// One int
	i := scanner.nextInt()
	fmt.Println(i)

	// One double
	a := scanner.nextDouble()
	fmt.Println(a)

	// One 64 bit int (long)
	l := scanner.nextLong()
	fmt.Println(l)

	// One word
	w := scanner.nextWord()
	fmt.Println(w)

	// One string/line
	l2 := scanner.nextString()
	fmt.Println(l2)

	// Int array
	ia := scanner.nextIntArray(true)
	for _, x := range ia {
		fmt.Printf("%d ", x)
	}
	fmt.Println()

	// 64 bit int array
	la := scanner.nextLongArray(false)
	for _, x := range la {
		fmt.Printf("%d ", x)
	}
	fmt.Println()
}
