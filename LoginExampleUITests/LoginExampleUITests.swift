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
        
        // Validation if the welcome text is displayed
        let textHome = app.staticTexts["Bem Vindo"]
        XCTAssert(textHome.exists)
        
        //writing in the email field
        let emailField = app.textFields["login_username"]
        emailField.tap()
        emailField.typeText("qazando@gmail.com")
        emailField.typeText("\n")
        
        //writing in the password field
        let passwordField = app.textFields["login_password"]
        passwordField.tap()
        passwordField.typeText("123456")
        passwordField.typeText("\n")
        
        // Clicking in continuar button
        let buttonContinuar = app.buttons["login_button"]
        buttonContinuar.tap()
        
        
        
        
    }
}
