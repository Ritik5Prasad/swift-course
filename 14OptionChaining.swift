// Optional chaining is Swift's way of safely accessing properties or methods on optionals.
// Instead of crashing if something is nil, it just returns nil for the whole chain.
// Use ? after the optional. It's like saying "if this exists, access that, otherwise stop."
// Why? It prevents those annoying nil pointer errors and makes your code more robust.

class Residence {
    var rooms: Int = 1
}

class Person {
    var residence: Residence?
}

// John doesn't have a residence yet, so residence is nil.
// Chaining with ? safely checks and returns nil if any part is nil.

let john = Person()
if let roomCount = john.residence?.rooms {
    print("Rooms: \(roomCount)")
} else {
    print("No residence yet!")
}
