import ArgumentParser

@main
struct xcb: AsyncParsableCommand {
	func run() throws {
		let versions = try XcodeUtils.installedXcodeVersions()
		print(versions)
	}
}
