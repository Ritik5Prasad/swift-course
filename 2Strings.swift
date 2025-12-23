// Strings in Swift are powerful for handling text. They're collections of characters.
// You can create them with literals (single or multiline), interpolate values with \( ),
// and access properties like count. They're Unicode-aware, so they handle emojis and international text perfectly.
// Essential for any app that deals with user input or display.

import Foundation

// String literals are straightforward. Use quotes for single line.

let simpleString = "Hello, Swift"
print(simpleString)

// Multiline strings use triple quotes. Great for long text or code.

let multilineString = """
Swift is a powerful language.
It is fast and safe.
It is used for iOS development.
"""
print(multilineString)

// String interpolation lets you insert values directly. Just \(variable).

let language = "Swift"
let version = 6
print("Learning \(language) version \(version)")

// Properties give you info. count is the length.

print("Character count:", simpleString.count)

// Characters are the building blocks. You can loop through them.

let letter: Character = "S"
print("Single character:", letter)

// Iterating over a String
for character in "Swift" {
    print(character)
}

// Checking Empty String
let emptyString = ""
print("Is empty:", emptyString.isEmpty)
