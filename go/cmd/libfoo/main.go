package main

import "C"

import (
	"rogchap.com/libfoo/foo"
)

//export reverse
func reverse(str *C.char) *C.char {
	return C.CString(foo.Reverse(C.GoString(str)))
}

func main() {}
