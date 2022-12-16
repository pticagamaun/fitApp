//
//  RepsOrTimerView.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

class RepsOrTimerView: UIView {
    
    private let repsOrTimerLabel = UILabel(text: "Reps or timer", textColor: .specialBlack, font: .robotoMedium14)
    private let subView: UIView = {
       let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .specialBrown
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let repeatOrTimerLabel = UILabel(text: "Choose repeat or timer",
                                             textColor: .specialBlack,
                                             font: .robotoMedium18)
    private let setsSlider = SliderView(name: "Sets", minValue: 0, maxValue: 10)
    private let repsSlider = SliderView(name: "Reps", minValue: 0, maxValue: 50)
    private let timerSlider = SliderView(name: "Timer", minValue: 0, maxValue: 600)
    private var stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addView(repsOrTimerLabel)
        addView(subView)
        repeatOrTimerLabel.textAlignment = .center
        stackView = UIStackView(arrangedSubviews: [setsSlider, repeatOrTimerLabel, repsSlider, timerSlider],
                                    axis: .vertical, spacing: 20)
        addView(stackView)
    }
}

extension RepsOrTimerView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            repsOrTimerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            repsOrTimerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            subView.topAnchor.constraint(equalTo: repsOrTimerLabel.bottomAnchor, constant: 3),
            subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            stackView.topAnchor.constraint(equalTo: subView.topAnchor, constant: 15),
            stackView.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -15)
        ])
    }
}
