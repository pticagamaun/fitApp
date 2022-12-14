//
//  WeatherView.swift
//  fitApp
//
//  Created by Vadim on 14.12.2022.
//

import UIKit

final class WeatherView: UIView {
    
    private let weatherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sun")
        return image
    }()
    
    private let weatherTitleLabel = UILabel(text: "Sunny",
                                            textColor: .specialBlack,
                                            font: .robotoMedim18)
    private let weatherDescriptionLabel = UILabel(text: "Nice weather to workout outside!",
                                                  textColor: .systemGray,
                                                  font: .robotoMedim14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 15
        addShadowOnView()
        addView(weatherImage)
        addView(weatherTitleLabel)
        addView(weatherDescriptionLabel)
    }
}

extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weatherImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherImage.heightAnchor.constraint(equalToConstant: 60),
            weatherImage.widthAnchor.constraint(equalToConstant: 60),
            
            weatherTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherTitleLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: -5),
            weatherTitleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherTitleLabel.bottomAnchor, constant: 3),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: -5),
            weatherDescriptionLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}

