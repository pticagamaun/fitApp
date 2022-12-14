//
//  UILabel + Extension.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String) {
        self.init()
        self.text = text
        self.textColor = .specialBlack
        self.numberOfLines = 2
        self.font = .robotoMedim16
    }
    
    convenience init(text: String, textColor: UIColor, font: UIFont?) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.numberOfLines = 2
        self.minimumScaleFactor = 10
        guard let fontText = font else {return}
        self.font = fontText
    }
}
