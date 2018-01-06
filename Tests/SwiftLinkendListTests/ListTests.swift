//
//  ListTests.swift
//  SwiftLinkendListTests
//
//  Created by Павел Тимош on 02.01.2018.
//

import XCTest
@testable import SwiftLinkendList

class ListTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRandomInt1K() {
        let size = 1000
        
        var numbers = LinkedList<UInt32>()
        for _ in 1...size {
            numbers.append(value: arc4random())
        }
        XCTAssertEqual(numbers.size, size)
        
    }
    
//    func testRandomInt1M() {
//        let size = 1_000_000
//
//        var numbers = LinkedList<UInt32>()
//        for _ in 1...size {
//            numbers.append(value: arc4random())
//        }
//    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            testRandomInt1K()
        }
    }

}
