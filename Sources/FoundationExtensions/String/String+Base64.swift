// Created for SwiftExtensions in 2022
//
// Copyright (c) https://github.com/DuckingSwift

import Foundation

public extension String {
	/// Encodes itself to Base64
	var toBase64: Self {
		Data(utf8).base64EncodedString()
	}

	/// Decodes itself from Base64
	var fromBase64: Self? {
		guard let data = Data(base64Encoded: self) else { return nil }
		return String(data: data, encoding: .utf8)
	}
}
