//
//  UIViewTests.swift
//  DeclarativeKitTests
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import XCTest

@testable import DeclarativeKit

internal final class UIViewTests: XCTestCase {
    internal func testSetFrame_validFrame_shouldReturnViewWithFrame() {
        let view = UIView().frame(CGRect(x: 0, y: 0, width: 100, height: 100))
        
        XCTAssertTrue(view.frame == UIViewTests.expectedDefaultViewFrame)
    }
    
    internal func testSetBounds_validBounds_shouldReturnViewWithBounds() {
        let view = UIView()
            .bounds(CGRect(x: 0, y: 0, width: 100, height: 100))
        
        XCTAssertTrue(view.bounds == UIViewTests.expectedDefaultViewFrame)
    }
    
    internal func testSetSize_validSize_shouldReturnViewWithSize() {
        let view = UIView()
            .size(CGSize(width: 150, height: 150))
        
        XCTAssertTrue(view.frame.size == UIViewTests.expectedDefaultViewSize)
    }
    
    internal func testSetPosition_validPosition_shouldReturnViewWithPosition() {
        let view = UIView()
            .position(CGPoint(x: 10, y: 10))
        
        XCTAssertTrue(view.frame.origin == UIViewTests.expectedDefaultViewPosition)
    }
    
    internal func testSetHidden_toTrue_shouldReturnViewWithHiddenStatus() {
        let view = UIView()
            .isHidden(true)
        
        XCTAssertTrue(view.isHidden == UIViewTests.expectedDefaultViewHiddenStatus)
    }
    
    internal func testSetBackgroundColor_withValidColor_shouldReturnViewWithBackgroundColor() {
        let view = UIView()
            .backgroundColor(.red)
        
        XCTAssertTrue(view.backgroundColor == UIViewTests.expectedDefaultViewBackgroundColor)
    }
    
    internal func testSetalpha_withValue_shouldReturnViewWithAlpha() {
        let view = UIView()
            .alpha(0.5)
        
        XCTAssertTrue(view.alpha == UIViewTests.expectedDefaultViewAlpha)
    }
    
    internal func testSetIsUserInteractionEnabled_withValue_shouldReturnViewWithIsUserInteractionEnabled() {
        let view = UIView()
            .isUserInteractionEnabled(false)
        
        XCTAssertTrue(view.isUserInteractionEnabled == UIViewTests.expectedDefaultViewIsUserInteractionEnabled)
    }
    
    internal func testSetTranslatesAutoresizingMaskIntoConstraints_withValue_shouldReturnViewWithTranslatesAutoresizingMaskIntoConstraints() {
        let view = UIView()
            .translatesAutoresizingMaskIntoConstraints(false)
        
        XCTAssertTrue(view.translatesAutoresizingMaskIntoConstraints == UIViewTests.expectedDefaultViewTranslatesAutoresizingMaskIntoConstraints)
    }
    
    internal func testSetCornerRadius_withValue_shouldReturnViewWithCornerRadius() {
        let view = UIView()
            .cornerRadius(50)
        
        XCTAssertTrue(view.layer.cornerRadius == UIViewTests.expectedDefaultViewCornerRadius)
    }
    
    internal func testSetAccessibilityIdentifier_withValue_shouldReturnViewWithAccessibilityIdentifier() {
        let view = UIView()
            .accessibilityIdentifier("test")
        
        XCTAssertTrue(view.accessibilityIdentifier == UIViewTests.expectedDefaultViewAccessibilityIdentifier)
    }
    
    internal func testSetAccessibilityLabel_withValue_shouldReturnViewWithAccessibilityLabel() {
        let view = UIView()
            .accessibilityLabel("test")
        
        XCTAssertTrue(view.accessibilityLabel == UIViewTests.expectedDefaultViewAccessibilityLabel)
    }
    
    internal func testAddViewToSelf_withValue_shouldReturnViewWithSubview() {
        let subview = UIView()
        let view = UIView()
            .addView(subview)
        
        XCTAssertTrue(subview.isDescendant(of: view))
    }
    
    internal func testAddSelfToView_withValue_shouldReturnViewWithSuperview() {
        let superView = UIView()
        let view = UIView()
            .addToView(superView)
        
        XCTAssertTrue(view.isDescendant(of: superView))
    }
    
}

extension UIViewTests {
    internal static var expectedDefaultViewSize: CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    internal static var expectedDefaultViewFrame: CGRect {
        return CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    internal static var expectedDefaultViewPosition: CGPoint {
        return CGPoint(x: 10, y: 10)
    }
    
    internal static var expectedDefaultViewHiddenStatus: Bool {
        return true
    }
    
    internal static var expectedDefaultViewBackgroundColor: UIColor {
        return .red
    }
    
    internal static var expectedDefaultViewAlpha: CGFloat {
        return 0.5
    }
    
    internal static var expectedDefaultViewIsUserInteractionEnabled: Bool {
        return false
    }
    
    internal static var expectedDefaultViewTranslatesAutoresizingMaskIntoConstraints: Bool {
        return false
    }
    
    internal static var expectedDefaultViewCornerRadius: CGFloat {
        return 50
    }
    
    internal static var expectedDefaultViewAccessibilityIdentifier: String {
        return "test"
    }
    
    internal static var expectedDefaultViewAccessibilityLabel: String {
        return "test"
    }
    
}
