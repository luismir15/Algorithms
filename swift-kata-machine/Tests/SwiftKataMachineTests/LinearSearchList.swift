import XCTest
@testable import SwiftKataMachine

final class LinearSearchTests: XCTestCase {
    func testLinearSearchArray() {
        let foo = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];
        XCTAssertEqual(linearSearch(foo, 69), true);
        XCTAssertEqual(linearSearch(foo, 1336), false);
        XCTAssertEqual(linearSearch(foo, 69420), true);
        XCTAssertEqual(linearSearch(foo, 69421), false);
        XCTAssertEqual(linearSearch(foo, 1), true);
        XCTAssertEqual(linearSearch(foo, 0), false);
    }
}