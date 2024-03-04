//
//  GeneralTest.swift
//  LoginExample
//
//  Created by Vitor Moura on 04/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import XCTest

class GeneralTests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}
