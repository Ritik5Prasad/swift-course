// Memory safety in Swift ensures you don't accidentally access invalid memory.
// inout parameters let functions modify variables passed in – they're passed by reference.
// Use & when calling. Swift enforces exclusive access: only one thing can modify a value at a time.
// This prevents data races and crashes in concurrent code.

func increment(_ x: inout Int) {
    x += 1
}
var value = 10
increment(&value)
print(value)
