// Initialization is how you set up your objects and structs when they're created.
// It's like giving them their starting values. Structs get automatic memberwise initializers,
// but classes need you to define them. Swift has designated (main) and convenience (helpers) initializers,
// plus failable ones that can return nil if setup fails. Proper init prevents bugs from uninitialized values!

import Foundation

// Structs get a free memberwise initializer. Just pass values for each property.
// Simple and automatic – one reason structs are great for data models.

struct Student {
    var name: String
    var age: Int
}

let student1 = Student(name: "Alex", age: 16)
print(student1.name, student1.age)

// Classes need explicit initializers. The designated init sets up all properties.
// It's the primary way to create the instance.

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) { 
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Sam", age: 25)
print(person.name, person.age)

// Convenience initializers call the designated one with defaults.
// They're shortcuts for common setups. Use 'convenience' keyword.

class Employee: Person {
    var position: String
    
    // Designated initializer
    init(name: String, age: Int, position: String) {
        self.position = position
        super.init(name: name, age: age)
    }
    
    // Convenience initializer
    convenience init(name: String, position: String) {
        self.init(name: name, age: 18, position: position)
    }
}

let emp1 = Employee(name: "John", position: "Developer")
print(emp1.name, emp1.age, emp1.position)

// Failable initializers return an optional – nil if init fails.
// Use init? and return nil on bad input. Perfect for validation.

class Product {
    var name: String
    
    init?(name: String) {
        if name.isEmpty {
            return nil  
        }
        self.name = name
    }
}

if let product = Product(name: "Laptop") {
    print("Product name:", product.name)
} else {
    print("Failed to create product")
}

if let invalidProduct = Product(name: "") {
    print("Product:", invalidProduct.name)
} else {
    print("Failed to create product due to empty name")
}
