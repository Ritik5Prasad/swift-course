// Welcome back! This is a quick intro to the very basics of Swift – think of it as your first steps.
// We'll cover printing, variables vs constants, type annotations, and how Swift figures out types on its own.
// It's simple stuff, but mastering these will make everything else click. Let's go!

import Foundation  // Provides core tools (not always required for print)

// Printing is how you show output. Just use print() with what you want to display.
// It's your way of talking to the user or debugging your code. Simple but essential!

print("Hello, Swift!") 

// Variables and constants are how you store data. Variables (var) can change – like your age.
// Constants (let) stay the same once set – like your name. Use constants when possible; they're safer!

// Variable: value can change
var myVariable = 10
print("Initial value of myVariable:", myVariable)

// We can change it
myVariable = 20
print("Updated value of myVariable:", myVariable)

// Constant: value cannot change once set
let myConstant = 100
print("Value of myConstant:", myConstant)

// Type annotation lets you tell Swift exactly what type something is. Useful when you want clarity,
// or when Swift might not guess right. Just add : TypeName after the name.

var name: String = "Swift Learner"
print("Name is:", name)

// Type inference is Swift being smart – it figures out the type from what you assign.
// No need to specify Int or String every time. Keeps your code clean!

let age = 18  // inferred as Int
print("Age is:", age)

// You cannot reassign a constant!
// Uncommenting the next line will cause a compile error
// myConstant = 200

// End of basic syntax example


