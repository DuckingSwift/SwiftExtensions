//

import XCTest

@testable import FoundationExtensions

final class FoundationExtensionsTests: XCTestCase {
	func test_isNotEmpty() throws {
		XCTAssertTrue([1].isNotEmpty)
	}
}
