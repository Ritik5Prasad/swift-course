// Control flow is how you make decisions and repeat actions in Swift.
// Use if/else for conditions, switch for multiple cases, for-in for loops.
// Guard for early exits, defer for cleanup. It's the logic that makes your programs smart!
// Master these and you can handle any scenario.

import Foundation

print("=== SWIFT CONTROL FLOW ===\n")

// if / else / else-if for conditional execution.

print("1. if / else / else-if:")

let temperature = 22
if temperature <= 0 {
    print("Freezing cold: Wear a heavy jacket")
} else if temperature < 20 {
    print("Chilly: Wear a sweater")
} else {
    print("Nice weather: T-shirt is fine")
}

// Optional binding with if-let
let possibleNumber = "42"
if let number = Int(possibleNumber) {
    print("Converted \(possibleNumber) to integer \(number)")
} else {
    print("Could not convert \(possibleNumber) to Int")
}

print("")

// guard for early exit if conditions fail.

print("2. guard (early exit):")

func printSquare(of text: String?) {
    guard let s = text, let n = Int(s) else {
        print("Invalid input — must be a string containing an integer")
        return
    }
    print("Square of \(n) is \(n * n)")
}

printSquare(of: "7")
printSquare(of: "nope")

print("")

// switch for pattern matching, ranges, tuples.

print("3. switch (pattern matching and ranges):")

let score = 85
switch score {
case 0:
    print("No score")
case 1..<50:
    print("Failing")
case 50..<70:
    print("Passing")
case 70..<90:
    print("Good")
case 90...100:
    print("Excellent")
default:
    print("Out of range")
}

// Multiple values in a case and value binding
let point = (1, -1)
switch point {
case (0, 0):
    print("Origin")
case (let x, 0):
    print("On the x-axis at x=\(x)")
case (0, let y):
    print("On the y-axis at y=\(y)")
case let (x, y) where x == y:
    print("On the line x == y at (\(x), \(y))")
default:
    print("Somewhere else: (\(point.0), \(point.1))")
}

print("")

// for-in loops for sequences.

print("4. for-in loops:")

let animals = ["cat", "dog", "bird"]
for animal in animals {
    print("Animal:", animal)
}

// Loop with where clause
for i in 1...10 where i % 2 == 0 {
    print("Even number: \(i)")
}

// Iterating a dictionary
let dict = ["Alice": 24, "Bob": 30]
for (name, age) in dict {
    print("\(name) is \(age) years old")
}

print("")

// while and repeat-while for conditional loops.

print("5. while and repeat-while:")

var countdown = 3
while countdown > 0 {
    print("Blast off in \(countdown)...")
    countdown -= 1
}
print("Liftoff!")

// repeat-while executes at least once
var attempts = 0
repeat {
    print("Attempt #\(attempts)")
    attempts += 1
} while attempts < 2

print("")

// break, continue, labeled for control.

print("6. break, continue and labels:")

outer: for i in 1...3 {
    for j in 1...3 {
        if i == 2 && j == 2 {
            print("Found (2,2) — breaking out of outer loop")
            break outer   // jumps out of both loops
        }
        if j % 2 == 0 {
            print("Skipping even j=\(j) in inner loop")
            continue      // continues inner loop
        }
        print("(\(i),\(j))")
    }
}

print("")

// ternary operator for quick choices.

print("7. ternary operator:")

let a = 5
let b = 10
let minVal = a < b ? a : b
print("Minimum is \(minVal)")

print("")

// defer for guaranteed cleanup.

print("8. defer:")

func demonstrateDefer() {
    defer { print("First defer — runs last") }
    defer { print("Second defer — runs before the first defer") }
    print("Inside function")
}

demonstrateDefer()

print("")

// fallthrough in switch to continue.

print("9. fallthrough in switch:")

let number = 3
switch number {
case 2:
    print("Two")
case 3:
    print("Three — will fallthrough to next case")
    fallthrough
case 4:
    print("Four-or-fellthrough")
default:
    print("Other")
}

print("")

print("=== END OF CONTROL FLOW ===")