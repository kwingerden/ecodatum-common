import XCTest
@testable import ecodatum_common

final class ecodatum_commonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ecodatum_common().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
