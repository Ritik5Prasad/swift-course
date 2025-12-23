// Inheritance is a key part of object-oriented programming – it lets one class build on another.
// Think of it like family: a child class inherits traits from its parent, but can add or change things.
// In Swift, only classes inherit (structs and enums don't). It's great for code reuse and modeling hierarchies.
// But use it wisely – sometimes protocols are better!

import Foundation

// The base class is the parent. Animal has a name and a sound method.
// Subclasses will inherit these and can override them.

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() {
        print("Generic animal sound")
    }
}

// Subclass Dog inherits from Animal. It gets name and sound, but overrides sound to bark.
// It also adds fetch(), which is unique to dogs.

class Dog: Animal {
    
    // Override method
    override func sound() {
        print("Bark!")
    }
    
    func fetch() {
        print("\(name) is fetching...")
    }
}

let dog = Dog(name: "Buddy")
dog.sound()     // Bark!
dog.fetch()     // Buddy is fetching...

// Using super lets you call the parent's version. Cat overrides sound but calls super first.
// This way, you get both the parent's behavior and your own.

class Cat: Animal {
    override func sound() {
        super.sound()   // Calls base class method
        print("Meow!")
    }
}

let cat = Cat(name: "Whiskers")
cat.sound()      // Generic animal sound\nMeow!

// Final classes can't be subclassed. Mark a class or method as final to prevent overriding.
// Useful when you want to lock down behavior or for performance.

final class Bird: Animal {
    // No subclass can inherit from Bird
    override func sound() {
        print("Chirp!")
    }
}

// Type checking with 'is' tells you if an instance is of a certain type.
// Casting with 'as?' tries to convert safely. Great for polymorphism!

if dog is Animal {
    print("Dog is an Animal")
}

if let animal = cat as? Animal {
    print("Cat casted to Animal")
}
