//
//  UIButton+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIButton {
    /// Set Button Title
    /// - Parameter title: String
    /// - Parameter state: State of Title, default to .normal
    public func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        setTitle(title, for: state)
        
        return self
    }
    
    /// Set Button title with NSAttributedString
    /// - Parameter title: NSAttributedString
    /// - Parameter state: State of title, default to .normal
    public func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State = .normal) -> Self {
        setAttributedTitle(title, for: state)
        
        return self
    }
}
