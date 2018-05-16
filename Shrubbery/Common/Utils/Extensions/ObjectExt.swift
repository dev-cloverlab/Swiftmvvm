import Foundation

protocol HasStandard {
}

extension HasStandard {
    @inline(__always) func apply(closure: (Self) -> ()) -> Self {
        closure(self)

        return self
    }

    @inline(__always) func run<T>(closure: (Self) -> (T)) -> T {
        return closure(self)
    }
}

extension NSObject: HasStandard {
}