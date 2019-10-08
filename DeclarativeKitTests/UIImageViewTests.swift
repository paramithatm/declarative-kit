//
//  UIImageViewTests.swift
//  DeclarativeKitTests
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import XCTest

@testable import DeclarativeKit

internal final class UIImageViewTests: XCTestCase {
    internal func testSetImage_validImage_shouldReturnImageViewWithImage() {
        // save image reference, as creating new image will create different value hence failing the tests.
        let image = UIImage(color: .red)
        
        let imageView = UIImageView()
            .image(image)
        
        XCTAssertTrue(imageView.image == image)
    }
    
    internal func testSetImage_emptyImage_shouldReturnImageViewWithNilImage() {
        let imageView = UIImageView()
            .image(nil)
        
        XCTAssertTrue(imageView.image == UIImageViewTests.expectedEmptyImage)
    }
}

extension UIImageViewTests {
    internal static var expectedEmptyImage: UIImage? {
        return nil
    }
}

extension UIImage {
    internal convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
