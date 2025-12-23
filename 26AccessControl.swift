// Access control in Swift lets you hide implementation details and control what's visible.
// private: only in the same file/scope. fileprivate: same file. internal: same module (default).
// public: everywhere. open: subclassable from other modules.
// Use it to encapsulate and make APIs clean. Prevents accidental misuse.

public struct Demo {
    private var secret = "hidden"
    public init() {}
    public func show() -> String { secret }
}
