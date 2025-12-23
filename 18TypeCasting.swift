// Type casting is about checking and converting types at runtime.
// Use 'is' to check if an instance is of a type, 'as?' for safe downcasting (returns optional),
// and 'as!' for forced casting (crashes if wrong). Prefer safe casting to avoid runtime errors!
// It's essential when working with inheritance or protocols.

class Vehicle {}
class Car: Vehicle {}

// vehicle is a Vehicle, but we know it's a Car.
// as? safely tries to cast; if it works, we get the Car.

let vehicle: Vehicle = Car()
if let car = vehicle as? Car {
    print("It's a car!")
} else {
    print("Not a car.")
}
