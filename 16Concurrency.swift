// Concurrency in Swift lets your code do multiple things at once, like fetching data while updating the UI.
// Swift uses async/await for structured concurrency – mark functions async, await their results.
// Tasks are units of work that run asynchronously. It's safer and easier than threads!
// Use it for network calls, heavy computations, or anything that shouldn't block the main thread.

import Foundation

// Task creates an async context. Inside, you can await other async functions.
// Here, it sleeps for 1 second asynchronously, then prints.

Task {
    // runs asynchronously
    print("Before sleep")
    try await Task.sleep(nanoseconds: 1_000_000_000)
    print("After sleep")
}

// Async functions are marked with async. They can be awaited.
// fetchNumber simulates work with sleep, then returns a value.

func fetchNumber() async -> Int {
    try? await Task.sleep(nanoseconds: 500_000_000)
    return 42
}

// Another task to fetch and print the number.

Task {
    let value = await fetchNumber()
    print("Value:", value)
}

// RunLoop keeps the command-line app alive to see async output.
// In real apps, you'd have a UI event loop.

RunLoop.main.run()