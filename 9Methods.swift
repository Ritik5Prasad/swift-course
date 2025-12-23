// Methods.swift
// Swift 6.2.3 — Instance and type methods
//
// Shows how to declare instance methods and type (static) methods.
// Demonstrates 'mutating' methods for structs, method overloading,
// and how to call methods on instances and types.

import Foundation

// MARK: Instance Methods in Class
class Counter {
    var count = 0
    
    func increment() {
        count += 1
        print("Incremented to:", count)
    }
    
    func increment(by amount: Int) {
        count += amount
        print("Incremented by \(amount), now:", count)
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 5)

// MARK: Instance Methods in Struct (Mutating methods)
struct Point {
    var x: Int
    var y: Int
    
    // Structs are value types → need 'mutating' to modify self
    mutating func moveBy(dx: Int, dy: Int) {
        x += dx
        y += dy
    }
}

var point = Point(x: 0, y: 0)
point.moveBy(dx: 3, dy: 4)
print("Point coordinates:", point.x, point.y)

// MARK: Type (Static) Methods
struct MathUtility {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

print("Square of 5:", MathUtility.square(5))
