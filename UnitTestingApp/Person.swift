//
//  Person.swift
//  UnitTestingApp
//
//  Created by Yevhen Shevchenko on 27.01.2021.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    var image: Data?
    private (set) var date: Date
    
    
    init(name: String, phone: String, image: Data? = nil) {
        self.name = name
        self.phone = phone
        date = Date()
        self.image = image
    }
    
    init(name: String, surname: String, phone: String, image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        date = Date()
        self.image = image
    }
}
