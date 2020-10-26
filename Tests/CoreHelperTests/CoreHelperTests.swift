import XCTest
@testable import CoreHelper

final class CoreHelperTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CoreHelper().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
