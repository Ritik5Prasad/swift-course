// Deinitialization is the cleanup phase for classes – it's called just before an instance is destroyed.
// Only classes have deinit (not structs or enums). It's your chance to free resources, close files, or log.
// Swift uses ARC (Automatic Reference Counting) for memory, so deinit runs when no references remain.
// Think of it as the object's "goodbye" method.

import Foundation

// Person has a deinit that prints when it's freed.
// This shows when ARC cleans up the instance.

class Person {
    var name: String

    init(name: String) {
        self.name = name
        print("\(name) initialized")
    }

    deinit {
        
        print("\(name) is being deinitialized")
    }
}

// Creating in a function scope. When the function ends, p goes out of scope and deinit runs.

func createPerson() {
    let p = Person(name: "Alice")
    print("Using \(p.name)")
} // p goes out of scope here, triggers deinit

createPerson()
