// Collections are Swift's way to group multiple values. Arrays are ordered, dictionaries key-value, sets unique unordered.
// They're type-safe, so all elements are the same type. Use them for lists, mappings, or unique items.
// Mutate them with append, update, etc. Loop with for-in.

import Foundation

// Arrays hold ordered values. Access by index, add with append.

var numbers: [Int] = [1, 2, 3]

// Add an element
numbers.append(4)
print("Array:", numbers)

// Access by index
print("First element:", numbers[0])

// Loop through array
for number in numbers {
    print("Array item:", number)
}

// Dictionaries map keys to values. Keys must be hashable.

var studentScores: [String: Int] = [
    "Math": 90,
    "Science": 95
]

// Add or update value
studentScores["English"] = 88

// Access value using key
if let mathScore = studentScores["Math"] {
    print("Math score:", mathScore)
}

// Loop through dictionary
for (subject, score) in studentScores {
    print("\(subject): \(score)")
}

// Sets have unique values, no order. Fast for membership checks.

var uniqueNumbers: Set<Int> = [1, 2, 2, 3, 4]

// Duplicate values are automatically removed
print("Set:", uniqueNumbers)

// Check if set contains a value
print("Contains 3:", uniqueNumbers.contains(3))

// Loop through set
for value in uniqueNumbers {
    print("Set item:", value)
}
