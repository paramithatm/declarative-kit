//
//  UIButtonTests.swift
//  DeclarativeKitTests
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import XCTest

@testable import DeclarativeKit

internal final class UIButtonTests: XCTestCase {
    internal func testSetTitleWithoutState_withValidTitle_shouldReturnButtonWithValidTitleAtNormalState() {
        let button = UIButton()
            .title("Hello World")
        
        XCTAssertTrue(button.title(for: .normal) == UIButtonTests.expectedDefaultTitle)
    }
    
    internal func testSetTitleWithoutState_withEmptyTitle_shouldReturnButtonWithoutTitleAtNormalState() {
        let button = UIButton()
            .title(nil)
        
        XCTAssertTrue(button.title(for: .normal) == UIButtonTests.expectedEmptyTitle)
    }
    
    internal func testSetTitle_withValidTitle_shouldReturnButtonWithValidTitle() {
        let button = UIButton()
            .title("Hello World", for: .normal)
            .title("Disabled", for: .disabled)
        
        XCTAssertTrue(button.title(for: .normal) == UIButtonTests.expectedDefaultTitle)
        XCTAssertTrue(button.title(for: .disabled) == UIButtonTests.expectedDisabledTitle)
    }
    
    internal func testSetTitle_withEmptyTitle_shouldReturnButtonWithoutTitle() {
        let button = UIButton()
            .title(nil, for: .normal)
            .title(nil, for: .disabled)
        
        XCTAssertTrue(button.title(for: .normal) == UIButtonTests.expectedEmptyTitle)
        XCTAssertTrue(button.title(for: .disabled) == UIButtonTests.expectedEmptyTitle)
    }
    
    internal func testSetAttributedStringTitleWithoutState_withValidAttrString_shouldReturnButtonWithAttributedTextAtNormalState() {
        let attrString = NSAttributedString(string: "Hello World", attributes: nil)
        
        let button = UIButton()
            .attributedTitle(attrString)
        
        XCTAssertTrue(button.attributedTitle(for: .normal) == UIButtonTests.expectedDefaultAttributedString)
    }
    
    internal func testSetAttributedStringTitleWithoutState_withEmptyAttrString_shouldReturnButtonWithoutAttributedTextAtNormalState() {
        let button = UIButton()
            .attributedTitle(nil)
        
        XCTAssertTrue(button.attributedTitle(for: .normal) == UIButtonTests.expectedEmptyAttributedString)
    }
    
    internal func testSetAttributedStringTitle_withValidAttrString_shouldReturnButtonWithAttributedText() {
        let attrString = NSAttributedString(string: "Hello World", attributes: nil)
        let attrString2 = NSAttributedString(string: "Disabled", attributes: nil)
        
        let button = UIButton()
            .attributedTitle(attrString, for: .normal)
            .attributedTitle(attrString2, for: .disabled)
        
        XCTAssertTrue(button.attributedTitle(for: .normal) == UIButtonTests.expectedDefaultAttributedString)
        XCTAssertTrue(button.attributedTitle(for: .disabled) == UIButtonTests.expectedDisabledAttributedString)
    }
    
    internal func testSetAttributedStringTitle_withEmptyAttrString_shouldReturnButtonWithoutAttributedText() {
        let button = UIButton()
            .attributedTitle(nil, for: .normal)
            .attributedTitle(nil, for: .disabled)
        
        XCTAssertTrue(button.attributedTitle(for: .normal) == UIButtonTests.expectedEmptyAttributedString)
        XCTAssertTrue(button.attributedTitle(for: .disabled) == UIButtonTests.expectedEmptyAttributedString)
    }
}

extension UIButtonTests {
    internal static var expectedDefaultTitle: String {
        return "Hello World"
    }
    
    internal static var expectedEmptyTitle: String? {
        return nil
    }
    
    internal static var expectedDisabledTitle: String {
        return "Disabled"
    }
    
    internal static var expectedDefaultAttributedString: NSAttributedString {
        return NSAttributedString(string: "Hello World")
    }
    
    internal static var expectedDisabledAttributedString: NSAttributedString {
        return NSAttributedString(string: "Disabled")
    }
    
    internal static var expectedEmptyAttributedString: NSAttributedString? {
        return nil
    }
}
