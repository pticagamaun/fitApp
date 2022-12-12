//
//  UIView + Extension.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

extension UIView {
    
    func addView(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
