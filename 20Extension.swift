// Extensions are Swift's way to add new functionality to existing types – even ones you didn't create!
// You can add methods, computed properties, initializers, etc. It's like giving superpowers to built-in types.
// Why? Keeps your code modular and lets you extend libraries without subclassing.
// Here, we add an area method to Circle.

struct Circle {
    var radius: Double
}

extension Circle {
    func area() -> Double {
        return .pi * radius * radius
    }
}

let c = Circle(radius: 3)
print("Area:", c.area())
