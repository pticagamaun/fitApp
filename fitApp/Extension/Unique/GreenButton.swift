//
//  GreenButton.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class GreenButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(text: String, _ target: Any?, selector: Selector) {
        self.init(type: .system)
        self.setTitle(text, for: .normal)
        self.addTarget(target, action: selector, for: .touchUpInside)
        configure()
    }
    
    func configure() {
        backgroundColor = .specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = .robotoMedium16
        tintColor = .white
    }
}
