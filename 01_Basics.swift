// Hey there! Welcome to your Swift learning adventure. This file is all about the fundamentals – the building blocks that make Swift such a powerful and safe language.
// We'll cover constants, variables, types, and more. Think of this as your friendly guide to getting started. Let's jump in!

import Foundation

print("=== SWIFT BASICS ===\n")

// First things first: constants and variables. Imagine constants as locked boxes – once you put something in, it stays there.
// We use 'let' for constants because they're immutable (can't change). Variables, on the other hand, use 'var' and can be updated.
// Why is this important? It helps prevent bugs. If you accidentally try to change a constant, Swift will catch it for you!
// Plus, it makes your code's intent clearer to anyone reading it.

print("1. Constants and Variables:")

// Constants (let) - value cannot be changed after assignment
let maximumNumberOfLoginAttempts = 10
print("Maximum login attempts: \(maximumNumberOfLoginAttempts)")

// Variables (var) - value can be changed
var currentLoginAttempt = 0
currentLoginAttempt = 1
print("Current login attempt: \(currentLoginAttempt)")

// Multiple constants/variables on one line
var x = 0.0, y = 0.0, z = 0.0
print("Coordinates: x=\(x), y=\(y), z=\(z)\n")

// Next up: type annotations. Sometimes Swift can figure out the type automatically (that's called type inference, we'll see it soon),
// but you can also tell it explicitly what type something should be. This is useful when you want to be super clear,
// or when Swift might not guess correctly. Just put a colon after the name and the type.

print("2. Type Annotations:")

// Explicit type declaration
var welcomeMessage: String
welcomeMessage = "Hello, Swift!"
print(welcomeMessage)

// Multiple variables with same type
var red, green, blue: Double
red = 255.0
green = 128.0
blue = 64.0
print("RGB: (\(red), \(green), \(blue))\n")

// Now, type safety and type inference. Swift is a type-safe language, meaning it checks types to prevent errors.
// But it doesn't make you write types everywhere – it infers them from context. This keeps your code clean while staying safe.
// For example, if you assign a number, it knows it's an Int. Assign text, it's a String. Neat, right?

print("3. Type Safety and Inference:")

// Type inference - Swift automatically determines type
let meaningOfLife = 42  // Inferred as Int
let pi = 3.14159        // Inferred as Double
let message = "Swift"   // Inferred as String

print("meaningOfLife is of type Int: \(meaningOfLife)")
print("pi is of type Double: \(pi)")
print("message is of type String: \(message)\n")

// Let's talk about numeric literals. These are just different ways to write numbers.
// Decimal is what we use every day, binary and octal are for low-level stuff, hexadecimal for things like colors.
// Swift lets you use underscores as separators for big numbers – makes them easier to read!

print("4. Numeric Literals:")

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary
let octalInteger = 0o21           // 17 in octal
let hexadecimalInteger = 0x11     // 17 in hexadecimal

print("Decimal: \(decimalInteger)")
print("Binary: \(binaryInteger)")
print("Octal: \(octalInteger)")
print("Hexadecimal: \(hexadecimalInteger)")

// Floating-point literals
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1    // 12.1875
let hexadecimalDouble = 0xC.3p0   // 12.1875

print("Decimal double: \(decimalDouble)")
print("Exponent double: \(exponentDouble)")
print("Hexadecimal double: \(hexadecimalDouble)\n")

// Type conversion is key in Swift. You can't just add an Int and a Double – you have to convert them.
// This prevents silent bugs that happen in other languages. Use the type name like Int() or Double() to convert.
// Remember, converting to Int truncates decimals, so be careful!

print("5. Numeric Type Conversion:")

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)  // Must convert types
print("2000 + 1 = \(twoThousandAndOne)")

// Integer and floating-point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let piValue = Double(three) + pointOneFourOneFiveNine
print("Pi approximation: \(piValue)")

let integerPi = Int(piValue)  // Truncates decimal
print("Integer pi: \(integerPi)\n")

// Type aliases are like nicknames for types. You can give a type a new name to make your code more readable.
// For example, if you're working with audio samples, you might alias UInt16 as AudioSample.
// It's just syntactic sugar, but it can make your intent clearer.

print("6. Type Aliases:")

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
print("Max amplitude found: \(maxAmplitudeFound)\n")

// Booleans are simple – true or false. They're fundamental for making decisions in your code.
// Swift has strict rules: only true/false values count as Bool. No "truthy" stuff like in some languages.
// This keeps things clear and prevents mistakes.

print("7. Booleans:")

let orangesAreOrange = true
let turnipsAreDelicious = false

if orangesAreOrange {
    print("Oranges are indeed orange!")
}

if !turnipsAreDelicious {
    print("Turnips are not delicious!\n")
}

// Tuples are a Swift specialty – they let you group multiple values into one compound value.
// No need for a struct just for temporary groupings. You can name the elements for clarity,
// or access them by position. Great for returning multiple values from functions!

print("8. Tuples:")

// Tuple with multiple values
let http404Error = (404, "Not Found")
print("HTTP Error: \(http404Error.0) - \(http404Error.1)")

// Decomposing tuple
let (statusCode, statusMessage) = http404Error
print("Status Code: \(statusCode)")
print("Status Message: \(statusMessage)")

// Ignoring values with underscore
let (justTheStatusCode, _) = http404Error
print("Just the code: \(justTheStatusCode)")

// Named tuple elements
let http200Status = (statusCode: 200, description: "OK")
print("Success: \(http200Status.statusCode) - \(http200Status.description)\n")

// Optionals – this is where Swift gets really safe. An optional can hold a value or be nil (nothing).
// We mark them with ? after the type. This forces you to handle the possibility of nil,
// preventing crashes from "null pointer exceptions" that plague other languages.
// Use if-let to safely unwrap them.

print("9. Optionals:")

// Optional - can hold a value or nil
var serverResponseCode: Int? = 404
print("Server response: \(serverResponseCode ?? 0)")

serverResponseCode = nil
print("Server response after reset: \(serverResponseCode ?? 0)")

// Optional binding with if-let
let possibleNumber = "123"
if let actualNumber = Int(possibleNumber) {
    print("'\(possibleNumber)' has an integer value of \(actualNumber)")
} else {
    print("'\(possibleNumber)' could not be converted to an integer")
}

// Multiple optional bindings
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber {
    print("\(firstNumber) < \(secondNumber)\n")
}

// The nil-coalescing operator ?? is a shortcut for providing a default value when something is nil.
// It's like saying "use this value, but if it's nil, use this default instead."
// Super handy for optionals!

print("10. Nil-Coalescing Operator:")

let defaultColorName = "red"
var userDefinedColorName: String?   // nil by default

var colorNameToUse = userDefinedColorName ?? defaultColorName
print("Color to use: \(colorNameToUse)")

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
print("Color to use after setting: \(colorNameToUse)\n")

// Assertions and preconditions are for debugging and enforcing assumptions.
// Assertions check in debug builds and crash if false. Preconditions do the same in release builds.
// Use them to document and enforce your code's expectations. Great for catching logic errors early!

print("11. Assertions and Preconditions:")

let age = 25
// assert(age >= 0, "Age cannot be negative")  // Uncomment to test
print("Age validation passed: \(age)")

// precondition(age >= 0, "Age must be non-negative")  // Uncomment to test
print("Precondition check passed\n")

print("=== END OF BASICS ===")


