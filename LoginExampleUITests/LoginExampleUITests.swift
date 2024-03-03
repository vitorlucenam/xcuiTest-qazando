//
//  LoginExampleUITests.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 03/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import XCTest

final class LoginExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

    }
}
