package main

import (
	"fmt"
)

func main() {
	arr := []int{1,7,8,2,3,9,5}
	bubbleSort(arr)
	fmt.Println(arr)
}

func bubbleSort(n []int) []int {
	for i, _ := range n {
		for j := 0; j < len(n)-i-1; j++ {
			if n[j] > n[j+1] {
				n[j], n[j+1] = n[j+1], n[j]
			}
		}
	}

	return n
}