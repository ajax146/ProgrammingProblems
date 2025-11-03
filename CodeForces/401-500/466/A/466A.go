// Problem 466A: Cheap Travel
// https://codeforces.com/contest/466/problem/A
// Executed with: go version go1.24.4 linux/arm64
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: November 2nd, 2025
// Codeforces language used: Go 1.22.2

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
	scanner := NewScanner()
	n := scanner.nextInt()
	m := scanner.nextInt()
	a := scanner.nextInt()
	b := scanner.nextInt()
	// 3 options. Buy ALL m ride tickets, inlcuding extra rides.
	// Buy the maxmium possible m ride tickets without having extra rides, and fill in the rest with single ride tickets
	// Buy ALL single ride tickets

	cost_all_m := ((n + m - 1) / m) * b
	cost_mix := ((n / m) * b) + ((n - ((n / m) * m)) * a)
	cost_all_n := n * a

	fmt.Println(min(cost_all_m, min(cost_mix, cost_all_n)))
}
