//
//  UIImageView+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIImageView {
    internal func size(_ size: CGSize) -> Self {
        self.frame.size = size
        
        return self
    }
    
    internal func image(_ image: UIImage?) -> Self {
        self.image = image
        
        return self
    }
}
