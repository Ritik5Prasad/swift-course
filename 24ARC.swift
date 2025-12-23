
// ARC (Automatic Reference Counting) is Swift's memory management system.
// It tracks how many references point to an object. When the count hits zero, the object is freed.
// Classes use ARC; structs and enums don't need it since they're copied.
// Watch for retain cycles (A holds B, B holds A) – use weak or unowned to break them.
// It makes memory safe without manual allocation/deallocation.

class Person {
    let name: String
    init(name: String) { self.name = name }
    deinit { print("\(name) freed!") }
}

// a points to a Person, count = 1.
// b also points, count = 2.
// Set a to nil, count = 1.
// Set b to nil, count = 0, deinit runs.

var a: Person? = Person(name: "Bob")
var b = a
a = nil   // reference still held
b = nil   // now deinit runs
