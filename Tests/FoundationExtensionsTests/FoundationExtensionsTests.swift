// Created for SwiftExtensions in 2022
//
// Copyright (c) https://github.com/DuckingSwift

import XCTest

@testable import FoundationExtensions

final class FoundationExtensionsTests: XCTestCase {
	func test_isNotEmpty() throws {
		XCTAssertTrue([1].isNotEmpty)
	}
}
