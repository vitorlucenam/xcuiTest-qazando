//
//  LoginTest.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 04/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import Foundation

final class LoginTest: GeneralTests {
    
    let login = LoginPage()

    func testExample() throws {
        login.validateTextInHome()
        login.writeEmailFiel()
        login.tapContinueButton()
    }

}
