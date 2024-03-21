//
//  TestBddExample.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 20/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import XCTest

class TestBddExample: SetupTestBase, login {
    
    
    func testLoginSuccess(){
        givenIWrightMyData()
        whenIClickInContinue()
        thenIShouldSeeLoggedArea()
    }
    
}
