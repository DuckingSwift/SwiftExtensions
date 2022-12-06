// Created for DSSwiftExtensions in 2022
//
// Copyright (c) https://github.com/DuckingSwift

import XCTest

@testable import DSSwiftExtensions

final class DSSwiftExtensions: XCTestCase {
	func test_isNotEmpty() throws {
		XCTAssertTrue([1].isNotEmpty)
	}
	
	func test_safeIndexArray() {
		let array = [1, 2, 3]
		XCTAssertEqual(array[safe: 1], 2)
		XCTAssertNil(array[safe: 3])
		XCTAssertNil(array[safe: -1])
		
		let string = "🤔😅❌"
		XCTAssertEqual(string[safe: string.startIndex], "🤔")
		XCTAssertNil(string[safe: string.index(string.startIndex, offsetBy: 3)])
	}
}
