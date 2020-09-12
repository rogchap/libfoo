package foo

// Reverse reverses the given string by each utf8 character
func Reverse(in string) string {
	n := 0
	rune := make([]rune, len(in))
	for _, r := range in {
		rune[n] = r
		n++
	}
	rune = rune[0:n]
	for i := 0; i < n/2; i++ {
		rune[i], rune[n-1-i] = rune[n-1-i], rune[i]
	}
	return string(rune)
}
