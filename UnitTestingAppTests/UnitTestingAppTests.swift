//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by Yevhen Shevchenko on 27.01.2021.
//

import XCTest
@testable import UnitTestingApp

class UnitTestingAppTests: XCTestCase {

    var sut: ViewController!

    override func setUp()  {
        super.setUp()
        sut = ViewController()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestShouldBeZero() {
        // given (дано)
        sut.setVolume(to: -1)
        
        // when (что произошло)
        let volume = sut.volume
        
        // then (что должно получиться)
        XCTAssert(volume == 0, "Lowest value should be equel 0")
    }
    
    func testHighestShouldBe100() {
        // given (дано)
        sut.setVolume(to: 101)
        
        // when (что произошло)
        let volume = sut.volume
        
        // then (что должно получиться)
        XCTAssert(volume == 100, "Highest value should be equel 100")
    }
    
    func testNumberOneMustBeGreaterNumberTwo() {
        let numberOne = 1
        let numberTwo = 0
        
        let bool = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(bool, "The number one must be greater number two")
    }
    
    func testNumberOneNotBeGreaterNumberTwo() {
        let numberOne = 1
        let numberTwo = 1
        
        let bool = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(!bool, "The number one must be greater number two")
    }

    func testLaunchPerformance() throws {
        measure {
            sut.setVolume(to: 101)
        }
    }

}
