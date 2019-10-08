//
//  UILabel+DeclarativeTests.swift
//  DeclarativeKitTests
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import XCTest

@testable import DeclarativeKit

internal class DeclarativeUILabelTests: XCTestCase {

    internal func testSetAttributedString_shouldSetAttributedText() {
        let attributedString = NSAttributedString(string: "Hello World")
        
        let label = UILabel().attributedString(attributedString)
        
        XCTAssertTrue(label.attributedText == DeclarativeUILabelTests.expectedDefaultAttributedString)
    }
}

extension DeclarativeUILabelTests {
    internal static var expectedDefaultAttributedString: NSAttributedString {
        return NSAttributedString(string: "Hello World")
    }
}
