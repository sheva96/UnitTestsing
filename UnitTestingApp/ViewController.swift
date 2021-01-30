//
//  ViewController.swift
//  UnitTestingApp
//
//  Created by Yevhen Shevchenko on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    private (set) var volume = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setVolume(to: 101)
        
    }

    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func greaterThanValue(x: Int, y: Int) -> Bool {
        x > y
    }
}

