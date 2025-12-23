// Functions are the building blocks of your Swift programs – they're reusable chunks of code that do specific tasks.
// You define what they take as input (parameters) and what they give back (return values).
// Why do we need functions? They keep your code organized, prevent repetition, and make complex problems manageable.
// Swift has some unique features like external parameter names for clarity, default values, and the ability to return multiple values.
// Functions are first-class citizens in Swift – you can pass them around, store them in variables, and return them from other functions.
// Let's see how they work!

import Foundation

// The simplest function – no inputs, no outputs, just does something.
// You define it with 'func', give it a name, and put the code in braces.

func greet() {
    print("Hello from Swift function")
}

greet()

// Functions with parameters and return values. Parameters are the inputs, return type comes after ->.
// When you call it, you pass arguments for each parameter.

func add(a: Int, b: Int) -> Int {
    return a + b
}

print("Sum:", add(a: 5, b: 3))

// External parameter names make function calls read like sentences.
// 'to' is what callers see, 'person' is what the function uses internally.
// This makes your APIs more readable – sayHello(to: "Student") reads naturally.

func sayHello(to person: String) {
    print("Hello, \(person)")
}

sayHello(to: "Student")

// Sometimes you want to omit the external name for a cleaner call.
// Use _ before the parameter name to hide the external label.

func multiply(_ x: Int, _ y: Int) -> Int {
    return x * y
}

print("Multiply:", multiply(4, 5))

// Default parameter values let you provide fallbacks for optional inputs.
// Callers only need to specify what's different from the default.

func introduce(name: String, country: String = "Unknown") {
    print("Name:", name, "Country:", country)
}

introduce(name: "Alex")  // Uses default country
introduce(name: "Sam", country: "India")

// Functions can return multiple values using tuples.
// This is great when you need to return related pieces of data together.
// You can name the tuple elements for clarity.

func getMinMax(numbers: [Int]) -> (min: Int, max: Int) {
    return (numbers.min()!, numbers.max()!)
}

let result = getMinMax(numbers: [3, 7, 2, 9])
print("Min:", result.min, "Max:", result.max)

// Variadic parameters let you accept any number of arguments of the same type.
// Use ... after the type. Inside the function, it becomes an array.
// Perfect for things like sum, average, or concatenating strings.

func average(_ numbers: Double...) -> Double {
    let total = numbers.reduce(0, +)
    return total / Double(numbers.count)
}

print("Average:", average(2, 4, 6))

// inout parameters allow functions to modify the original variables passed in.
// Mark with 'inout' and pass with & when calling. It's like pass-by-reference.
// Use sparingly – it's better to return new values when possible.

func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapValues(&x, &y)
print("x:", x, "y:", y)

// Functions are types themselves in Swift – you can store them in variables!
// This enables functional programming patterns. The type (Int, Int) -> Int means
// a function that takes two Ints and returns an Int.

let operation: (Int, Int) -> Int = add
print("Using function as value:", operation(8, 2))
