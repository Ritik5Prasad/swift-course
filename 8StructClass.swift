// StructuresAndClasses.swift
// Swift 6.2.3 — Value types vs Reference types
//
// Explains differences between structs (value types) and classes
// (reference types). Shows how copying behavior differs, how
// classes support identity, and basic class initialization.

import Foundation

// MARK: Structure (Value Type)
struct Student {
    var name: String
    var age: Int
}

var student1 = Student(name: "Alex", age: 16)
var student2 = student1   // Copy is created

student2.age = 18

print("Student1 age:", student1.age) // 16
print("Student2 age:", student2.age) // 18

// MARK: Class (Reference Type)
class Teacher {
    var name: String
    var subject: String
    
    init(name: String, subject: String) {
        self.name = name
        self.subject = subject
    }
}

let teacher1 = Teacher(name: "Mr. John", subject: "Math")
let teacher2 = teacher1   // Same reference

teacher2.subject = "Physics"

print("Teacher1 subject:", teacher1.subject) // Physics
print("Teacher2 subject:", teacher2.subject) // Physics

// MARK: Identity Operator (Class only)
// Checks if both references point to the same object
print("Same instance:", teacher1 === teacher2)

// MARK: When to use Struct vs Class
// Struct → data models, safety, copying
// Class → inheritance, shared state
