// Error handling in Swift lets you deal with problems gracefully instead of crashing.
// You define custom errors as enums conforming to Error, throw them with 'throw', and catch with do/try/catch.
// Functions that can throw are marked with 'throws'. It's like giving your code a safety net!
// Use it for things like network failures or invalid input.

enum ParseError: Error {
    case notNumber
}

// The function throws if conversion fails. Callers must handle it.

func convert(_ str: String) throws -> Int {
    guard let val = Int(str) else {
        throw ParseError.notNumber
    }
    return val
}

// Use do/try/catch to handle errors. Try the risky code, catch if it throws.

do {
    let result = try convert("abc")
    print("Got \(result)")
} catch {
    print("Error: Not a number!")
}
