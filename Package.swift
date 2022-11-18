// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
	platforms: [
		.driverKit(.v19),
		.iOS(.v13),
		.macCatalyst(.v13),
		.macOS(.v10_15),
		.tvOS(.v13),
		.watchOS(.v6),
	],
    products: [
        .library(
            name: "FoundationExtensions",
            targets: ["FoundationExtensions"]
		),
		.library(
			name: "UIKitExtensions",
			targets: ["UIKitExtensionsTarget"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.50.3"),
	],
	targets: [
		.target(
			name: "UIKitExtensionsTarget",
			dependencies: [.target(name: "UIKitExtensions",
								   condition: .when(platforms: [.iOS]))],
			path: "SwiftPM-PlatformExclude/UIKitExtensionsWrap"
		),
			  
		.target(
			name: "UIKitExtensions",
			dependencies: []
		),
		
        .target(
            name: "FoundationExtensions",
            dependencies: []
		),
        .testTarget(
            name: "FoundationExtensionsTests",
            dependencies: ["FoundationExtensions"]
		),
    ]
)
