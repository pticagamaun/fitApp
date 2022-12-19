//
//  UIStackView + Extension.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.backgroundColor = .clear
    }
}
