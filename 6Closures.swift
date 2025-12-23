// Hey, let's talk about closures! Closures are one of Swift's most powerful features – they're basically self-contained blocks of code that you can pass around like any other value.
// You can think of them as anonymous functions that capture their surrounding context. Why do we need them? They're perfect for callbacks, custom sorting,
// asynchronous operations, and anywhere you want to define behavior on the fly without creating a separate named function.
// They're what make Swift code so expressive and flexible. Let's dive in and see how they work!

import Foundation

// Starting simple: a basic closure with no parameters or return value.
// This is just a block of code wrapped in braces. You assign it to a variable and call it later.
// It's like defining a mini-function right where you need it.

let greet = {
    print("Hello from a closure")
}

greet()  // Calling it just like a function

// Now, closures with parameters and return types. You specify them just like function parameters,
// but inside the braces. The 'in' keyword separates the parameters from the body.
// This lets you create reusable logic that takes inputs and produces outputs.

let addNumbers = { (a: Int, b: Int) -> Int in
    return a + b
}

print("Sum:", addNumbers(3, 4))

// Swift is smart about types – it can often infer them from context.
// Here, we explicitly tell it the closure type, but let it figure out the parameters.
// This keeps your code clean while staying type-safe.

let multiply: (Int, Int) -> Int = { a, b in
    a * b  // No return needed for single expressions
}

print("Multiply:", multiply(4, 5))

// Shorthand argument names are a Swift specialty – $0 for first param, $1 for second, etc.
// They're great for short closures where naming parameters would be overkill.
// Makes your code super concise, especially for things like sorting or mapping.

let subtract: (Int, Int) -> Int = {
    $0 - $1  // $0 is first param, $1 is second
}

print("Subtract:", subtract(10, 3))

// Closures as function parameters – this is where the magic happens!
// You can pass behavior into functions. The performOperation function doesn't know what operation to do,
// it just calls the closure you pass in. This is the foundation of functional programming in Swift.

func performOperation(_ operation: (Int, Int) -> Int) {
    let result = operation(6, 2)
    print("Result:", result)
}

performOperation(addNumbers)  // Pass our addition closure

// Trailing closure syntax makes code more readable when the closure is the last parameter.
// You put the closure outside the parentheses. This is super common in Swift APIs,
// like when sorting arrays or handling completion callbacks.

performOperation { a, b in
    a / b  // Division closure
}

// Closures can capture values from their surrounding scope.
// This counter closure captures the 'count' variable, and each time it's called, it modifies that captured value.
// This is how you create stateful closures – they're like objects with behavior and data bundled together.

func makeCounter() -> () -> Int {
    var count = 0  // This variable is captured by the closure
    
    let counter = {
        count += 1  // Modifies the captured variable
        return count
    }
    
    return counter  // Returns the closure that captured 'count'
}

let counter = makeCounter()
print(counter())  // 1 - first call
print(counter())  // 2 - remembers previous state
print(counter())  // 3 - keeps incrementing
