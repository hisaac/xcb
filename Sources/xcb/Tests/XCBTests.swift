import Testing

@testable import xcb

@Suite
struct XCBTests {

	@Test
	func testXcodeUtilsInstalledXcodeVersions() async throws {
		let versions = try XcodeUtils.installedXcodeVersions()
		#expect(versions.isEmpty == false)
	}
}
