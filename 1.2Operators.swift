// Hey, ready for some operators? Operators are the little symbols that make your code do stuff – like math, comparisons, and logic.
// In Swift, we have arithmetic operators for calculations, comparison operators for checking equality, logical operators for combining conditions,
// and even some special ones like the ternary. They're the tools that let your code make decisions and compute values.
// Let's see them in action!

import Foundation

// Assignment is straightforward – it puts a value into a variable. The = sign is your friend here.
// But remember, you can only assign to variables (var), not constants (let)!

// MARK: Assignment Operator
var a = 10          // Assigns 10 to a
let b = 3

// Arithmetic operators are for basic math. Swift supports the usual suspects: add, subtract, multiply, divide, and remainder.
// Division with integers gives you integers back (truncating decimals), so watch out for that.
// Remainder (%) gives you what's left after division – super useful for checking even/odd or cycling through things.

print("Addition:", a + b)        // 13
print("Subtraction:", a - b)     // 7
print("Multiplication:", a * b)  // 30
print("Division:", a / b)        // 3 (Integer division)
print("Remainder:", a % b)       // 1

// Comparison operators let you compare values. They return true or false, which is perfect for if statements.
// You've got equal to (==), not equal (!=), greater than (>), less than (<), and their "or equal" versions.
// These are case-sensitive for strings, and they work with most types.

print(a == b)   // Equal to
print(a != b)   // Not equal to
print(a > b)    // Greater than
print(a < b)    // Less than
print(a >= b)   // Greater than or equal to
print(a <= b)   // Less than or equal to

// Logical operators combine boolean values. AND (&&) is true only if both sides are true.
// OR (||) is true if either side is true. NOT (!) flips true to false and vice versa.
// Use parentheses to group them clearly, and remember short-circuiting: Swift stops evaluating as soon as it knows the answer.

let isLoggedIn = true
let isAdmin = false

print(isLoggedIn && isAdmin)  // AND
print(isLoggedIn || isAdmin)  // OR
print(!isLoggedIn)            // NOT

// The ternary conditional operator is a compact way to choose between two values based on a condition.
// It's like a mini if-else: condition ? valueIfTrue : valueIfFalse.
// Great for simple choices, but don't overuse it – it can make code hard to read if it gets complex.

let result = a > b ? "A is bigger" : "B is bigger"
print(result)

// Range operators are Swift's way of working with sequences. Closed range (a...b) includes both ends.
// Half-open (a..<b) includes the start but not the end. Perfect for loops and array slicing.
// Think of them as "from here to there, inclusive or not."

// Closed range (includes 1 and 5)
for number in 1...5 {
    print("Closed range:", number)
}

// Half-open range (excludes 5)
for number in 1..<5 {
    print("Half-open range:", number)
}
