import XCTest
@testable import DispatchPQ

class DispatchPQTests: XCTestCase {
    func testExample() {
        XCTAssertEqual("Hello, World!", "Hello, World!")
    }


    static var allTests : [(String, (DispatchPQTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
