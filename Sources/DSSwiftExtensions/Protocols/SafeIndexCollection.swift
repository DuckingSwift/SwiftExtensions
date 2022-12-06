// Created for  in 2022
//
// Copyright (c) https://github.com/DuckingSwift

protocol SafeIndexCollection {
	associatedtype Index
	associatedtype Element
	
	/// Returns the element at given index. If index doesn't exist method return nil
	subscript(safe index: Index) -> Element? { get }
}

extension SafeIndexCollection where Self: Collection {
	subscript(safe index: Index) -> Element? {
		indices.contains(index) ? self[index] : nil
	}
}
