// Subscripts are Swift's way of letting you define custom access patterns for your types, just like how arrays use [index].
// They're methods that look like property access – you write type[index] and it calls your subscript method.
// Why do we need them? They make your custom types feel as natural as built-in ones. Imagine accessing a matrix with matrix[row, col]
// or getting a person's name from a database with people[id]. Without subscripts, you'd have to write clunky methods like getElementAt(row: col:).
// They're all about clean, intuitive APIs. Let's explore how to create them!

import Foundation

// A basic subscript in a struct. Here, TimesTable lets you do table[4] to get 3*4=12.
// It's read-only, so you can get values but not set them. Perfect for computed access.

struct TimesTable {
    let multiplier: Int
    
    // Subscript allows TimesTable[n] to calculate value
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let table = TimesTable(multiplier: 3)
print("3 x 4 =", table[4])   // 12
print("3 x 7 =", table[7])   // 21

// Read-write subscripts let you both get and set values. WeekDays here uses it to access days by index.
// When you assign, it updates the underlying array. Great for mutable collections.

struct WeekDays {
    private var days = ["Mon", "Tue", "Wed", "Thu", "Fri"]
    
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            days[index] = newValue
        }
    }
}

var week = WeekDays()
print("Day 0:", week[0])
week[0] = "Sunday"
print("Updated Day 0:", week[0])

// Subscripts can take multiple parameters! Matrix uses [row, col] to access a 2D grid.
// It flattens the 2D index into a 1D array position. Super useful for grids, tables, or any multi-dimensional data.

struct Matrix {
    var rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    subscript(row: Int, col: Int) -> Double {
        get {
            return grid[(row * columns) + col]
        }
        set {
            grid[(row * columns) + col] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 3)
matrix[0, 1] = 1.5
print("Matrix[0,1] =", matrix[0,1])
