//
//  SetupTestBase.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 20/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import Foundation

import XCTest

class SetupTestBase: XCTestCase {
    
    let app = XCUIApplication()
    let helper = MainUIHelper()
    
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
