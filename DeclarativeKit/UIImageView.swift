//
//  UIImageView+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIImageView {
    /// Set UIImageView Image
    /// - Parameter image: Optional UIImageView
    public func image(_ image: UIImage?) -> Self {
        self.image = image
        
        return self
    }
    
    /// Set UIImageView Image
    /// - Parameter imageName: Image Name
    /// - Parameter bundle: Optional Bundle
    public func image(_ imageName: String, bundle: Bundle? = nil) -> Self {
        self.image = UIImage(named: imageName, in: bundle, compatibleWith: nil)
        
        return self
    }
}
