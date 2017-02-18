import XCTest
@testable import MortgageCalculator

class MortgageCalculatorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(MortgageCalculator().text, "Hello, World!")
    }


    static var allTests : [(String, (MortgageCalculatorTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
