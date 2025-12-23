// Enums, or enumerations, are Swift's way of defining a group of related values in a type-safe way.
// Instead of using strings or integers that could be any value, enums let you define exactly what values are allowed.
// Why do we need them? They make your code safer and more expressive. No more typos in string constants,
// and the compiler catches invalid values. They're perfect for things like directions, states, or error types.
// Swift enums are incredibly powerful – they can have raw values, associated values, and even methods!
// Let's explore the different ways to use them.

import Foundation

// Basic enums define a set of named values. Each case is like a distinct option.
// You access them with dot notation: Direction.north. This is much safer than strings –
// no risk of "northh" by mistake. Swift forces you to handle all cases in switches.

enum Direction {
    case north
    case south
    case east
    case west
}

let move = Direction.north

// Switch statements with enums must be exhaustive – you have to cover all cases.
// This prevents bugs where you forget to handle a possible value.

switch move {
case .north:
    print("Moving North")
case .south:
    print("Moving South")
case .east:
    print("Moving East")
case .west:
    print("Moving West")
}

// Enums can have raw values – underlying types like Int or String that get assigned automatically.
// Here, monday gets 1, tuesday gets 2, etc. You can access the raw value with .rawValue.
// This is great for interoperability with C APIs or when you need a numeric representation.

enum Weekday: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
}

let today = Weekday.wednesday
print("Raw value:", today.rawValue)

// You can create an enum from a raw value, but it returns optional since the value might not exist.
if let day = Weekday(rawValue: 3) {
    print("Day created from raw value:", day)
}

// Associated values are what make Swift enums truly special – each case can carry additional data.
// Unlike raw values which are the same type for all cases, associated values can be different per case.
// This lets you create rich, type-safe data structures. Perfect for results that might succeed with data or fail with an error.

enum Result {
    case success(data: String)
    case failure(error: String)
}

let apiResponse = Result.success(data: "User loaded")

// When switching on enums with associated values, you extract the data with let.
switch apiResponse {
case .success(let data):
    print("Success:", data)
case .failure(let error):
    print("Error:", error)
}

// Enums can have methods just like classes and structs! The method can access 'self' to know which case it is.
// This lets you attach behavior to your enum values. Here, each traffic light knows what action to take.

enum TrafficLight {
    case red, yellow, green
    
    func action() {
        switch self {
        case .red:
            print("Stop")
        case .yellow:
            print("Slow down")
        case .green:
            print("Go")
        }
    }
}

let light = TrafficLight.green
light.action()
