//
//  UIStackView.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 09/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

extension UIStackView {
    /// Add ArrangeView
    /// - Parameter view: UIView
    internal func arrangeView(_ view: UIView) -> Self {
        addArrangedSubview(view)
        
        return self
    }
    
    /// Add Multiple ArrangeView
    /// - Parameter views: Array of UIView
    internal func arrangeViews(_ views: [UIView]) -> Self {
        views.forEach { view in
            addArrangedSubview(view)
        }
        
        return self
    }
    
    /// Set Layout Margin
    /// - Parameter insets: UIEdgeInsets
    internal func layoutMargins(_ insets: UIEdgeInsets) -> Self {
        layoutMargins = insets

        isLayoutMarginsRelativeArrangement = true

        return self
    }
    
    /// Set Stack Axis
    /// - Parameter axis: NSLayoutConstraint.Axis
    internal func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis

        return self
    }
    
    /// Set Stack Distribution
    /// - Parameter distribution: UIStackView.Distribution
    internal func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution

        return self
    }
    
    /// Set Stack Spacing
    /// - Parameter spacing: CGFloat
    internal func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing

        return self
    }
}
