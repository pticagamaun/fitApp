//
//  HeaderView.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

final class HeaderView: UIView {
    
    private let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .specialGray
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    private let nameLabel = UILabel(text: "Your Name",
                            textColor: .specialBlack,
                            font: .robotoMedim24)
    private let calendarView = CalendarView()
    private lazy var addWorkoutButton = AddWorkoutButton(self, selector: #selector(addWorkoutTapped))
    private let weatherView = WeatherView()
    
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
        addView(calendarView)
        addView(profileImage)
        addView(nameLabel)
        addView(addWorkoutButton)
        addView(weatherView)
    }
    
    @objc private func addWorkoutTapped() {
        print("addWorkoutTapped")
    }
    
    func setCornerRadius() {
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }
}

extension HeaderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            
            calendarView.topAnchor.constraint(equalTo: profileImage.centerYAnchor),
            calendarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            calendarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            calendarView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 5),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            nameLabel.heightAnchor.constraint(equalToConstant: 24),
            
            addWorkoutButton.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 3),
            addWorkoutButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 90),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 90),
            
            weatherView.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 3),
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 5),
            weatherView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            weatherView.heightAnchor.constraint(equalToConstant: 90),
        ])
    }
}
