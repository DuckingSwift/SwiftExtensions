// Created for SwiftExtensions in 2022
//
// Copyright (c) https://github.com/DuckingSwift

import Foundation

public extension String {
	/// Trims whitespaces
	var trimmedWhitespaces: Self {
		if isEmpty { return self }
		return trimmingCharacters(in: NSCharacterSet.whitespaces)
	}
}
