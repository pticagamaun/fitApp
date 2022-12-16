//
//  BrownTextField.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class BrownTextField: UITextField {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.borderStyle = .none
        self.layer.cornerRadius = 10
        self.backgroundColor = .specialBrown
        self.textColor = .specialBlack
        self.font = .robotoBold20
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = .always
        self.clearButtonMode = .always
        self.returnKeyType = .done
    }
}
