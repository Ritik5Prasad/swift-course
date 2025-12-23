
// Generics let you write flexible, reusable code that works with any type.
// Use placeholders like <T> for types. Swift infers the actual type when you use it.
// It's type-safe – no casting needed – and prevents code duplication.
// Perfect for collections, utilities, or anything that should work with multiple types.

func identity<T>(_ value: T) -> T {
    value
}

print(identity(42))
print(identity("Swift"))
