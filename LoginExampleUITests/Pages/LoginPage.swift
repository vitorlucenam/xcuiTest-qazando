//
//  LoginPage.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 04/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import Foundation
import XCTest

class LoginPage{
    
    let helper = MainUIHelper()
    
    func validateTextInHome(){
        helper.checkTxtExist(txt: "Bem Vindo")
    }
    
    func writeEmailFiel(){
        helper.sendKeysNameTextFields(name: "login_username", value: "qazando@gmail.com")
    }
    
    func writePasswordFiel(){
        helper.sendKeysNameTextFields(name: "login_password", value: "123456")
    }
    
    func tapContinueButton(){
        helper.tapElementButtons(idn: "login_button")
        
    }
    
}
