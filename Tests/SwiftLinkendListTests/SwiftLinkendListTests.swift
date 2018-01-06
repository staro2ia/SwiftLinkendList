import XCTest
@testable import SwiftLinkendList

class SwiftLinkendListTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftLinkendList().text, "Hello, World!")
    }
    
    func testLinkedList() {
//        let a = Array<Int>()
//        let i = a.makeIterator()
        
        var dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Husky")
        print(dogBreeds)
        
        var numbers = LinkedList<Int>()
        numbers.append(value: 5)
        numbers.append(value: 10)
        numbers.append(value: 15)
        print(numbers)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testLinkedList", testLinkedList),
        ]
}
