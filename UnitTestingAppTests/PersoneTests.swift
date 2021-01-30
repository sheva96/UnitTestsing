//
//  PersoneTests.swift
//  UnitTestingAppTests
//
//  Created by Yevhen Shevchenko on 27.01.2021.
//

import XCTest
@testable import UnitTestingApp

class PersoneTests: XCTestCase {
    
    var image: UIImage?
    var imageDate: Data?

    override func setUp() {
        super.setUp()
        
        image = UIImage(systemName: "person.crop.circle")
        imageDate = image?.pngData()
    }

    override func tearDown() {
        super.tearDown()
        image = nil
        imageDate = nil
    }

    func testInitPersonWithNameAndPhone() {
        let persone = Person(name: "Foo", phone: "Bar")
        
        XCTAssertNotNil(persone)
    }
    
    func testPersonWithFullNameAndPhone() {
        let persone = Person(name: "Foo", surname: "Bar", phone: "Bas")
        
        XCTAssertNotNil(persone)
    }
    
    func testWhenGivenNameAndPhoneSetNameAndPhone() {
        let person = Person(name: "Foo", phone: "Bar")
        
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Bar")
    }
    
    func testWhenGivenSurnameSetSurname() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Bas")
        
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitPersoneWithDate() {
        let person = Person(name: "Foo", phone: "Bar")
        
        XCTAssertNotNil(person.date)
    }
    
    func testInitPersonWithImage() {
        
        
        let person = Person(name: "Foo", phone: "Bar", image: imageDate)
        
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
        
        
        let persone = Person(name: "Foo", surname: "Bar", phone: "Bus", image: imageDate)
        
        XCTAssertNotNil(persone.image)
    }
}
