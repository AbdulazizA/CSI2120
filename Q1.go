// Mehezabin Ahamed 8524484 CSI2120 A6

// Q1
package main

import (
	"fmt"
)

// 1 (a)
func sosd(num int) int {

	var sum int = 0

	for num > 0 {
		sum = sum + ((num % 10) * (num % 10))
		num = num / 10
	}

	return sum
}

// 1 (b)
func stop(num int) bool {
	if num == 0 ||
		num == 1 ||
		num == 4 ||
		num == 16 ||
		num == 20 ||
		num == 37 ||
		num == 42 ||
		num == 58 ||
		num == 89 ||
		num == 145 {

		return true

	}

	return false

}

// 1 (c)
func sosd_series(num int) []int {

	var series []int

	return sosd_series2(num, series)
}

func sosd_series2(num int, series []int) []int {

	series = append(series, sosd(num))

	if stop(num) {

		return series
	}

	num = sosd(num)

	return sosd_series2(num, series)
}

// 1 (d)
func happy(num int) bool {
	series := sosd_series(num)

	if series[len(series)-1] == 1 {

		return true
	}

	return false

}

// 1 (e)
func main() {
	x := 1
	for x != 0 {
		fmt.Print("Enter a positive number (type -4 to exit): ")
		fmt.Scan(&x)
		fmt.Println(sosd_series(x))
		if happy(x) {
			fmt.Println("Happy")
		}
		fmt.Println("Unhappy")

	}

	//for testing of the functions
	/*
		fmt.Println("Hello World!")
		fmt.Println(sosd(130))
		fmt.Println(stop(42))
		fmt.Println(sosd_series(120))
		fmt.Println(happy(44))
		fmt.Println(happy(120))
	*/
}
