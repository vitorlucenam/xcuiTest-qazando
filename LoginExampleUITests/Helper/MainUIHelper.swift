//
//  MainUIHelper.swift
//  LoginExampleUITests
//
//  Created by Vitor Moura on 04/03/24.
//  Copyright © 2024 Gary Tokman. All rights reserved.
//

import Foundation
import XCTest

class MainUIHelper: XCTestCase {
    
    let app = XCUIApplication()
    let elementsQuery = XCUIApplication().scrollViews.otherElements
    let collectionView = XCUIApplication().collectionViews
    
    func waitElement(element: Any, timeout: TimeInterval = 10.0) {
        let exists = NSPredicate(format: "exists == 1")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
    
    func waitMessage(message: String) {
        waitLoadingDisapper()
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", message)
        let result = app.staticTexts.containing(predicate)
        let element = XCUIApplication().staticTexts[result.element.firstMatch.label]
        waitElement(element: element)
        
    }
    
    func waitLoadingDisapper() {
        sleep(2)
        let element = XCUIApplication().activityIndicators["Em andamento"]
        let exists = NSPredicate(format: "exists == 0")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 200.0, handler: nil)
    }
    
    func waitDuring(time: UInt32) {
        sleep(time)
    }
    
    func okButton() {
        let okButton = app.toolbars.buttons["OK"]
        okButton.tap()
    }
    
    // MARK: - Tap
    
    func tapElementButtons(idn: String) {
        let buttons = app.buttons[idn]
        waitElement(element: buttons)
        buttons.tap()
    }
    
    func tapElementLabel(_ label: String) {
        app.textFields[label].tap()
    }
    
    func tapSampleStaticText(text: String) {
        app.staticTexts[text].tap()
    }
    
    func tapTableStaticText(text: String) {
        app.tables.staticTexts[text].tap()
    }
    
    func tapCellWithText(_ text: String) {
        waitLoadingDisapper()
        let searchedCell = app.cells.containing(NSPredicate(format: "label CONTAINS %@", text)).element
        searchedCell.firstMatch.tap()
        waitLoadingDisapper()
    }
    
    func tapStaticTexts(staticText: String) {
        waitElement(element: elementsQuery.staticTexts[staticText])
        elementsQuery.staticTexts[staticText].tap()
    }
    
    func tapCollectionStaticTexts(staticText: String) {
        waitElement(element: collectionView.staticTexts[staticText])
        collectionView.staticTexts[staticText].tap()
    }
    
    func sendKeysTextFields(name: String, value: String) {
        let element = elementsQuery.textFields[name]
        element.tap()
        element.typeText(value)
    }
    
    func sendKeysSecureTextFields(name: String, value: String) {
        let element = elementsQuery.secureTextFields[name]
        element.tap()
        element.typeText(value)
    }
    
    func clickAgreement(idn: String) {
        let agreementcheckboxElement = XCUIApplication().scrollViews.otherElements.otherElements[idn]
        agreementcheckboxElement.tap()
    }
    
    func sendKeysNameTextFields(name: String, value: String) {
        let documenttextfieldTextField = app.textFields[name]
        documenttextfieldTextField.tap()
        documenttextfieldTextField.typeText(value)
        documenttextfieldTextField.typeText("\n")
    }
    
    func sendKeysNameTextView(name: String, value: String) {
        let documenttextfieldTextField = app.textViews[name]
        documenttextfieldTextField.tap()
        documenttextfieldTextField.typeText(value)
        documenttextfieldTextField.typeText("\n")
    }
    
    func sendKeysNameTextWithoutEnter(name: String, value: String) {
        let documenttextfieldTextField = app.textViews[name]
        documenttextfieldTextField.tap()
        documenttextfieldTextField.typeText(value)
    }
    
    func sendNumberKeyboard(number: String) {
        let keyApp = XCUIApplication().keys[number]
        waitElement(element: keyApp)
        keyApp.tap()
    }
    
    func skipScreen(_ page: String, btn: String) {
        if app.buttons[page].exists {
            waitLoadingDisapper()
            
            let alert = app.alerts.firstMatch
            if alert.exists {
                alert.buttons["Permitir"].tap()
            }
            waitLoadingDisapper()
            tapElementButtons(idn: btn)
        }
    }
    
    func swipeToBtn() {
        let scroll = app.scrollViews.element
        scroll.swipeDown()
    }
    
    // Check
    
    func checkBtnExist(idn: String) {
        let button = app.buttons[idn]
        waitElement(element: button)
        XCTAssert(button.exists)
    }
    
    func checkTxtExist(txt: String) {
        let text = app.staticTexts[txt]
        waitElement(element: text)
        XCTAssert(text.exists)
    }
}


