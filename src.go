package gobug25065

import (
	"fmt"
)

type myType struct {}

func (m myType) A() {}
func (p *myType) B() {}

func Fn() {
	p := &myType{}
	(*myType).A(p)  // OK
	fmt.Println((*myType).A)  // NG
	(*myType).B(p)  // OK
	fmt.Println((*myType).B)  // OK
}
