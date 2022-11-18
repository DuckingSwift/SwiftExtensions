import Foundation

public extension String {
    /// Trims whitespaces
    var trimmedWhitespaces: Self {
        if isEmpty { return self }
        return trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
