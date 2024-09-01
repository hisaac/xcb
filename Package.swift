// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "xcb",
	platforms: [
		.macOS(.v14),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
		.package(url: "https://github.com/tuist/Path.git", exact: "0.3.2"),
	],
	targets: [
		.executableTarget(
			name: "xcb",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
				.product(name: "Path", package: "Path"),
			]
		),
	]
)

// Packages for future reference:
// - https://github.com/cpisciotta/xcbeautify
// - https://github.com/tuist/Command
// - https://github.com/tuist/FileSystem
// - https://github.com/tuist/XcodeProj
// - https://github.com/tuist/SwiftTerminal
