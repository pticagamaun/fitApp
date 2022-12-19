//
//  GreenSlider.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class GreenSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        maximumTrackTintColor = .specialLine
        minimumTrackTintColor = .specialGreen
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    convenience init(_ target: Any?, selector: Selector) {
        self.init()
        self.addTarget(target, action: selector, for: .valueChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
