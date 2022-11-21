// Created for DSSwiftExtensions in 2022
//
// Copyright (c) https://github.com/DuckingSwift

import XCTest

@testable import DSSwiftExtensions

final class DSSwiftExtensions: XCTestCase {
	func test_isNotEmpty() throws {
		XCTAssertTrue([1].isNotEmpty)
	}
}
