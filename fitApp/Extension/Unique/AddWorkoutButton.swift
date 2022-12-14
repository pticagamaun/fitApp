//
//  AddWorkoutButton.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

final class AddWorkoutButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        addShadowOnView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ target: Any?, selector: Selector) {
        self.init()
        self.addTarget(target, action: selector, for: .touchUpInside)
    }
    
    private func setupButton() {
        backgroundColor = .specialYellow
        setImage(UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate), for: .normal)
        tintColor = .specialDarkGreen
        layer.cornerRadius = 15
        imageTitleConfiguration()
    }
    
    private func imageTitleConfiguration() {
        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.plain()
            configuration.imagePlacement = .top
            configuration.imagePadding = 10
            configuration.titleAlignment = .center
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)
            configuration.title = "Add Workout"
            configuration.attributedTitle = AttributedString("Add Workout",
                                                             attributes: AttributeContainer([NSAttributedString.Key.font: UIFont(name: "Roboto-Medium",size: 11) as Any]))
            self.configuration = configuration
        } else {
            imageEdgeInsets = .init(top: 0, left: 20, bottom: 15, right: 0)
            titleEdgeInsets = .init(top: 50, left: -40, bottom: 0, right: 0)
        }
    }
}
