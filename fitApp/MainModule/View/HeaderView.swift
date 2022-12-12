//
//  HeaderView.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

class HeaderView: UIView {
    
    let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .specialGray
        imageView.layer.cornerRadius = 50
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    let nameLabel = UILabel(text: "Your Name", textColor: .specialBlack)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .clear
        addView(profileImage)
        addView(nameLabel)
    }
}

extension HeaderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            
            nameLabel.topAnchor.constraint(equalTo: profileImage.topAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 5),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            nameLabel.heightAnchor.constraint(equalToConstant: 24),
            
        ])
    }
}
