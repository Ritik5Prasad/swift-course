// Macros in Swift are like code generators – they let you write shorthand that expands to more code at compile time.
// The @Observable macro is a built-in one that makes classes reactive. It automatically adds publishers for properties,
// so you can observe changes. Great for UI updates or data binding!
// Here, we observe name and age changes using Combine's sink.

import Foundation
import Combine

// @Observable marks the class for automatic observation.
// It generates $name and $age publishers behind the scenes.

@Observable
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Main part: subscribe to changes.
// $name.sink gets called whenever name changes.

let person = Person(name: "Alice", age: 25)
var cancellables = Set<AnyCancellable>()

// Observe changes to 'name'
person.$name
    .sink { newValue in
        print("Name changed to \(newValue)")
    }
    .store(in: &cancellables)

// Observe changes to 'age'
person.$age
    .sink { newValue in
        print("Age changed to \(newValue)")
    }
    .store(in: &cancellables)

// Simulate property changes
person.name = "Bob"
person.age = 26

// Keep the command-line app running briefly to see output
RunLoop.main.run(until: Date().addingTimeInterval(1))
