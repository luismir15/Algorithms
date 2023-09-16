import XCTest
@testable import SwiftKataMachine

final class BinarySearchListTests: XCTestCase {
    func testBinarySearchArray() {
        let foo = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420]
        XCTAssertEqual(binarySearchList(foo, 69), true)
        XCTAssertEqual(binarySearchList(foo, 1336), false)
        XCTAssertEqual(binarySearchList(foo, 69420), true)
        XCTAssertEqual(binarySearchList(foo, 69421), false)
        XCTAssertEqual(binarySearchList(foo, 1), true)
        XCTAssertEqual(binarySearchList(foo, 0), false)
    }
}
