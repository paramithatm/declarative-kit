//
//  UILabel+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UILabel {
    /// Set Attributed string
    ///
    /// - Parameter attributedString: NSAttributedString
    /// - Returns: UILabel
    internal func attributedString(_ attributedString: NSAttributedString) -> Self {
        attributedText = attributedString

        return self
    }
}
