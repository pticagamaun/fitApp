//
//  UILabel + Extension.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, textColor: UIColor) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.numberOfLines = 2
    }
    
}
