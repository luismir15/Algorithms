import XCTest
@testable import SwiftKataMachine

class SinglyLinkedListTests: XCTestCase {
    var list: SinglyLinkedList<String>!

    override func setUp() {
        super.setUp()
        list = SinglyLinkedList<String>()
    }

    override func tearDown() {
        list = nil
        super.tearDown()
    }

    func testNewLinkedList() {
        XCTAssertTrue(list.length == 0)
        XCTAssertNil(list.head)
    }

    func testPrepend() {
        list.prepend(item: "ABC")
        XCTAssertEqual(list.length, 1)
    }

    func testInsertAt() {
        do {
            try list.insertAt(item: "ABC", idx: 0)
            XCTAssertEqual(list.length, 1)
            XCTAssertEqual(list.head?.value, "ABC")
        } catch {
            XCTFail("Expected method to not throw an error, but it did.")
        }
    }

    func testInsertAtOutOfBounds() {
        do {
            try list.insertAt(item: "ABC", idx: 1)
        } catch LinkedListError.indexOutOfBounds {
            // Test passed
        } catch {
            XCTFail("Unexpected error thrown.")
        }
    }
}
