// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "xcb",
	platforms: [
		.macOS(.v14),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
		.package(url: "https://github.com/cpisciotta/xcbeautify.git", exact: "2.11.0"),
		.package(url: "https://github.com/tuist/Command.git", exact: "0.7.4"),
		.package(url: "https://github.com/tuist/FileSystem.git", exact: "0.2.0"),
		.package(url: "https://github.com/tuist/Path.git", exact: "0.3.2"),
		.package(url: "https://github.com/tuist/XcodeProj.git", exact: "8.23.0"),
		// https://github.com/tuist/SwiftTerminal
	],
	targets: [
		.executableTarget(
			name: "xcb",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
				.product(name: "Command", package: "Command"),
				.product(name: "FileSystem", package: "FileSystem"),
				.product(name: "Path", package: "Path"),
				.product(name: "xcbeautify", package: "xcbeautify"),
				.product(name: "XcodeProj", package: "XcodeProj"),
			]
		),
	]
)
