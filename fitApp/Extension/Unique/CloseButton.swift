//
//  CloseButton.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class CloseButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImage(UIImage(named: "X"), for: .normal)
        backgroundColor = .specialLightBrown
        tintColor = .specialGreen
    }
    
    convenience init(_ target: Any?, selector: Selector) {
        self.init()
        self.addTarget(target, action: selector, for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

