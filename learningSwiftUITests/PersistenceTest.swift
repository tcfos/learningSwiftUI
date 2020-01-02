//
//  PersistenceTest.swift
//

import XCTest
@testable import learningSwiftUI

class PersistenceTests: XCTestCase {
    var sut : storage = storage()  //system under test
    var testNames : [String] = ["abc", "def"]
    let filenameOfTestfile : String = "namesTestfile"
    let filenameNoFile : String = "nofile"

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPersist() {
        var result : [String] = [""]
        sut.persist(withNumbers: testNames, withFilename: filenameOfTestfile)
        do {
            result = try sut.loadFromFile(withFilename: filenameOfTestfile)
        } catch {
            
        }
        
        XCTAssertNotNil(result)
        XCTAssertTrue(result == testNames)
    }
    
    
    func testNoFile() {
        var result : [String] = [""]
        do {
            result = try sut.loadFromFile(withFilename: filenameNoFile)
        } catch {
            return
        }
        XCTAssertTrue(result == testNames)
    }
    
}
