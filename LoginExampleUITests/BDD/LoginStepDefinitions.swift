//
//  loginStepDefinitions.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 20/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import XCTest

protocol login {
    func testLoginSuccess()
}

extension SetupTestBase {
    
    func givenIWrightMyData(){
        XCTContext.runActivity(named: "Given i wright my data"){ _ in
            helper.sendKeysNameTextFields(name: "login_username", value: "qazando@gmail.com")
            helper.sendKeysNameTextFields(name: "login_password", value: "123456")
        }
    }
    
    func whenIClickInContinue(){
        XCTContext.runActivity(named: "When i click in continue"){ _ in
            helper.tapElementButtons(idn: "login_button")
        }
    }
    
    func thenIShouldSeeLoggedArea(){
        XCTContext.runActivity(named: "Then i should see logged area"){ _ in
            helper.checkTxtExist(txt: "Bem Vindo")
        }
    }
}
