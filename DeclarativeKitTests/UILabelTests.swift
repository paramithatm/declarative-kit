//
//  UILabel+DeclarativeTests.swift
//  DeclarativeKitTests
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import XCTest

@testable import DeclarativeKit

internal final class UILabelTests: XCTestCase {
    
    internal func testApplyText_withValidText_shouldReturnLabelWithValidText() {
        let label = UILabel()
            .text("Hello World")
        
        XCTAssertTrue(label.text == UILabelTests.expectedDefaultText)
    }
    
    internal func testApplyText_withoutText_shouldReturnLabelWithoutText() {
        let label = UILabel()
            .text(nil)
        
        XCTAssertTrue(label.text == UILabelTests.expectedEmptyText)
    }

    internal func testApplyAttributedString_shouldReturnLabelWithAttributedString() {
        let attributedString = NSAttributedString(string: "Hello World")
        let label = UILabel()
            .attributedString(attributedString)
        
        XCTAssertTrue(label.attributedText == UILabelTests.expectedDefaultAttributedString)
    }
    
    internal func testApplyAttributedString_withoutAttrString_shouldReturnLabelWithoutAttributedString() {
        let label = UILabel()
            .attributedString(nil)
        
        XCTAssertTrue(label.attributedText == UILabelTests.expectedEmptyAttributedString)
    }
}

extension UILabelTests {
    internal static var expectedDefaultText: String {
        return "Hello World"
    }
    
    internal static var expectedEmptyText: String? {
        return nil
    }
    
    internal static var expectedDefaultAttributedString: NSAttributedString {
        return NSAttributedString(string: "Hello World")
    }
    
    internal static var expectedEmptyAttributedString: NSAttributedString? {
        return nil
    }
}
