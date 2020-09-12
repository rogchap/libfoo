package main

import "C"

import (
	"rogchap.com/libfoo/foo"
)

//export reverse
func reverse(in string) string {
	return foo.Reverse(in)
}

//export sayHello
func sayHello() string {
	return "Hello from Go\x00"
}

func main() {}
