// Protocols are like contracts – they define what methods and properties a type must have.
// Any type (class, struct, enum) can conform to a protocol by implementing its requirements.
// It's Swift's way of doing interfaces, enabling polymorphism and decoupling.
// Protocol-oriented programming is a big deal in Swift for flexible, testable code.

protocol Describable {
    func describe() -> String
}

// Dog conforms to Describable by implementing describe().

struct Dog: Describable {
    func describe() -> String {
        "I am a dog"
    }
}

print(Dog().describe())


