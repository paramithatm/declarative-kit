//
//  UIView+Declarative.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 08/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - General
    /// Set Frame
    /// - Parameter frame: CGRect
    public func frame(_ frame: CGRect) -> Self {
        self.frame = frame
        
        return self
    }
    
    /// set Bounds
    /// - Parameter bounds: CGRect
    public func bounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        
        return self
    }
    
    /// s=Set Size
    /// - Parameter size: CGSize
    public func size(_ size: CGSize) -> Self {
        frame.size = size

        return self
    }
    
    /// Set Position/Origin
    /// - Parameter position: CGPoint
    public func position(_ position: CGPoint) -> Self {
        frame.origin = position

        return self
    }
    
    /// Set Hidden Status
    /// - Parameter isHidden: Bool
    public func isHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        
        return self
    }
    
    /// Set Background Color
    /// - Parameter color: Optional UIColor
    public func backgroundColor(_ color: UIColor?) -> Self {
        backgroundColor = color
        
        return self
    }
    
    /// Set Alpha
    /// - Parameter value: CGFloat
    public func alpha(_ value: CGFloat) -> Self {
        alpha = value
        
        return self
    }
    
    /// Set user interaaction
    /// - Parameter isEnable: Bool
    public func isUserInteractionEnabled(_ isEnable: Bool) -> Self {
        isUserInteractionEnabled = isEnable
        
        return self
    }
    
    /// Set translatesAutoresizingMaskIntoConstraints
    /// - Parameter isEnable: Bool
    public func translatesAutoresizingMaskIntoConstraints(_ isEnable: Bool) -> Self {
        translatesAutoresizingMaskIntoConstraints = isEnable

        return self
    }
    
    // MARK: - Layer
    
    /// Set corner radius
    /// - Parameter radius: CGFloat
    public func cornerRadius(_ radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        
        return self
    }
    
    // MARK: - Constraint
    
    public func widthAnchor(_ constant: CGFloat) -> Self {
        widthAnchor.constraint(equalToConstant: constant).isActive = true

        return self
    }
    
    public func widthAnchorLessThanOrEqualToConstant(_ constant: CGFloat) -> Self {
        widthAnchor.constraint(lessThanOrEqualToConstant: constant).isActive = true

        return self
    }
    
    public func widthAnchorLessThanOrEqualTo(_ anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat) -> Self {
        widthAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true

        return self
    }
    
    public func widthAnchorLessThanOrEqualTo(_ dimension: NSLayoutDimension, multiplier: CGFloat) -> Self {
        widthAnchor.constraint(lessThanOrEqualTo: dimension, multiplier: multiplier).isActive = true

        return self
    }
    
    public func widthAnchorGreaterThanOrEqualToConstant(_ constant: CGFloat) -> Self {
        widthAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true

        return self
    }
    
    public func widthAnchorGreaterThanOrEqualTo(_ anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat) -> Self {
        widthAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true

        return self
    }
    
    public func widthAnchorGreaterThanOrEqualTo(_ dimension: NSLayoutDimension, multiplier: CGFloat) -> Self {
        widthAnchor.constraint(greaterThanOrEqualTo: dimension, multiplier: multiplier).isActive = true

        return self
    }

    public func heightAnchor(_ constant: CGFloat) -> Self {
        heightAnchor.constraint(equalToConstant: constant).isActive = true

        return self
    }
    
    public func heightAnchorlessThanOrEqualToConstant(_ constant: CGFloat) -> Self {
        heightAnchor.constraint(lessThanOrEqualToConstant: constant).isActive = true

        return self
    }
    
    public func heightAnchorLessThanOrEqualToConstant(_ constant: CGFloat) -> Self {
        heightAnchor.constraint(lessThanOrEqualToConstant: constant).isActive = true

        return self
    }
    
    public func heightAnchorLessThanOrEqualTo(_ anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat) -> Self {
        heightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true

        return self
    }
    
    public func heightAnchorLessThanOrEqualTo(_ dimension: NSLayoutDimension, multiplier: CGFloat) -> Self {
        heightAnchor.constraint(lessThanOrEqualTo: dimension, multiplier: multiplier).isActive = true

        return self
    }
    
    public func heightAnchorGreaterThanOrEqualToConstant(_ constant: CGFloat) -> Self {
        heightAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true

        return self
    }
    
    public func heightAnchorGreaterThanOrEqualTo(_ anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat) -> Self {
        heightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true

        return self
    }
    
    public func heightAnchorGreaterThanOrEqualTo(_ dimension: NSLayoutDimension, multiplier: CGFloat) -> Self {
        heightAnchor.constraint(greaterThanOrEqualTo: dimension, multiplier: multiplier).isActive = true

        return self
    }
    
    // MARK: - Accessibility
    
    /// Set accessibility identifier
    /// - Parameter identifier: Optional String
    public func accessibilityIdentifier(_ identifier: String?) -> Self {
        accessibilityIdentifier = identifier

        return self
    }
    
    /// Set accessibility label
    /// - Parameter label: Optional String
    public func accessibilityLabel(_ label: String?) -> Self {
        accessibilityLabel = label
        
        return self
    }
}
