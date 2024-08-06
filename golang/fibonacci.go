package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()
	fmt.Println(fib(10))
	fmt.Printf("Time taken for fib(10): %v\n", time.Since(start))

	start = time.Now()
	fmt.Println(fib(20))
	fmt.Printf("Time taken for fib(20): %v\n", time.Since(start))

	start = time.Now()
	fmt.Println(fib(500))
	fmt.Printf("Time taken for fib(500): %v\n", time.Since(start))
}

func fib(number int) int {
	if number <= 1 {
		return number
	}

	return fib(number-1) + fib(number-2)
}