// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
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
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
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
