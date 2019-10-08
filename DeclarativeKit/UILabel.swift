//
//  UILabel+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UILabel {
    /// Set text
    /// - Parameter value: String
    public func text(_ value: String?) -> Self {
        text = value
        
        return self
    }
    
    /// Set Attributed string
    ///
    /// - Parameter attributedString: NSAttributedString
    /// - Returns: UILabel
    public func attributedString(_ attributedString: NSAttributedString?) -> Self {
        attributedText = attributedString

        return self
    }
}
