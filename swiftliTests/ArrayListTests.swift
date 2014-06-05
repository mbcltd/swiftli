//
//  ArrayListTests.swift
//  swiftli
//
//  Created by David Morgan-Brown on 05/06/2014.
//  Copyright (c) 2014 David Morgan-Brown. All rights reserved.
//

import XCTest
import swiftli

class ArrayListTests: XCTestCase {
    
    let a = ArrayList(array:["a","B","c"])
    
    func testFind() {
        let f1 = a.find({ $0.lowercaseString != $0 })
        XCTAssert(f1 == "B")
        
        let f2 = a.find({ $0 == "D" })
        XCTAssert(f2 == nil)
    }
    
    func testSubscript() {
        XCTAssert( a.element(0) == "a" )
        XCTAssert( a.element(1) == "B" )
        XCTAssert( a.element(2) == "c" )
    }
    
    func testHead() {
        XCTAssert( a.head() == "a" )
    }
    
    func testTail() {
        XCTAssert( a.tail().length() == 2 )
        XCTAssert( a.tail().head() == "B" )
        XCTAssert( a.tail().tail().head() == "c" )
        XCTAssert( a.tail().tail().tail().isEmpty() )
    }
    
    func testIsEmpty() {
        XCTAssert( !a.isEmpty() )
        let b = ArrayList(array:String[]())
        XCTAssert( b.isEmpty() )
    }
    
    func testLength() {
        XCTAssert( a.length() == 3 )
        XCTAssert( a.tail().length() == 2 )
        XCTAssert( a.tail().tail().length() == 1 )
        XCTAssert( a.tail().tail().tail().length() == 0 )
    }
    
    
    
}
