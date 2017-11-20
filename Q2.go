// Mehezabin Ahamed  8524484  CSI2120 A6
package main

import (
	"fmt"
)

type Pixel struct {
	x, y float32
}

type Line struct {
	startPoint, endPoint Pixel
}

// Linear interploation
// ToDo: turn into go routine, send result on a channel
func (l *Line) linear(t float32) *Pixel {
	return &Pixel{(1.0-t)*l.startPoint.x + t*l.endPoint.x,
		(1.0-t)*l.startPoint.x + t*l.endPoint.y}
}

func main() {
	l := Line{Pixel{1.0, 3.0}, Pixel{7.0, -2.0}}
	point := make([]Pixel, 10)

	for i, t := 0, float32(0.0); i < 10; i, t = i+1, t+0.1 {
		point[i] = *l.linear(t)
	}
	// print loop
	// ToDo: add select listening to all channels opened in linear
	for i := 0; i < 10; i++ {
		fmt.Printf("(%f,%f)\n", point[i].x, point[i].y)
	}
}
