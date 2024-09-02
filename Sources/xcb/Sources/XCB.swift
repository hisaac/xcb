import ArgumentParser

@main
struct XCB: AsyncParsableCommand {
	func run() throws {
		let versions = try XcodeUtils.installedXcodeVersions()
		print(versions)
	}
}
