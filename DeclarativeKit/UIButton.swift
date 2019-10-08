//
//  UIButton+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIButton {
    internal func attributedTitle(_ title: NSAttributedString, state: UIControl.State = .normal) -> Self {
        setAttributedTitle(title, for: .normal)
        
        return self
    }
    
    internal func backgroundColor(_ color: UIColor?) -> Self {
        backgroundColor = color
        
        return self
    }
    
    internal func cornerRadius(_ radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        
        return self
    }
}
