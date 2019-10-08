//
//  UIView+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIView {
    internal func widthAnchor(_ constant: CGFloat) -> Self {
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true

        return self
    }
    
    internal func heightAnchor(_ constant: CGFloat) -> Self {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true

        return self
    }
    
    internal func accessibilityIdentifier(_ identifier: String) -> Self {
        accessibilityIdentifier = identifier
        
        return self
    }
}
