// Opaque types are Swift's way of providing abstraction while maintaining type safety.
// When you return 'some Protocol', you're saying "I'll give you something that conforms to this protocol,
// but I'm not telling you exactly what type it is." The caller knows the capabilities (the protocol methods)
// but not the implementation details. Why do we need this? It lets you hide implementation details,
// change your internal types without breaking external code, and create more flexible APIs.
// It's especially useful in libraries where you want to reserve the right to change implementations later.
// Without opaque types, you'd have to expose concrete types or use less safe type erasure.

protocol Shape {
    func area() -> Double
}

// Here's a concrete type that implements the protocol.

struct Square: Shape {
    var side: Double
    func area() -> Double { side * side }
}

// The function returns 'some Shape' - it promises to return something that implements Shape,
// but callers don't know it's specifically a Square. This gives you freedom to change to Circle later
// without affecting callers, as long as it still implements Shape.

func makeShape() -> some Shape {
    Square(side: 5)  // Could change this to Circle(side: 5) and callers wouldn't know
}

print(makeShape().area())  // Can call area(), but can't access Square-specific properties
