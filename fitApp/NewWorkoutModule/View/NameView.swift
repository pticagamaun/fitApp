//
//  NameView.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class NameView: UIView {
        private let nameLabel = UILabel(text: "Name", textColor: .specialLine, font: .robotoMedium14)
        private let nameTextField = BrownTextField()
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
            setConstraints()
        }
    
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
        private func setupViews() {
            addView(nameLabel)
            addView(nameTextField)
        }
}

//MARK: - Constraints
extension NameView {

    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            nameLabel.heightAnchor.constraint(equalToConstant: 16),

            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            nameTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
