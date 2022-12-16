//
//  WorkoutTableVIewCell.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class WorkoutTableViewCell: UITableViewCell {
    
    static let idWorkoutCell = "idWorkoutCell"
    private let backgroundCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBackgroundCell
        view.layer.cornerRadius = 10
        return view
    }()
    private let imageBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLightBrown
        view.layer.cornerRadius = 15
        return view
    }()
    private let imageCell: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "imageCell")
        return image
    }()
    private let workoutNameLabel = UILabel(text: "Workout Name", textColor: .specialBlack, font: .robotoBold22)
    private let repsLabel = UILabel(text: "Reps: 10", textColor: .specialBlack, font: .robotoMedium16)
    private let setsLabel = UILabel(text: "Sets: 2", textColor: .specialBlack, font: .robotoMedium16)
    private var labelsStackView = UIStackView()
    private lazy var startWorkoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialYellow
        button.setTitle("START", for: .normal)
        button.titleLabel?.font = .robotoMedium16
        button.setTitleColor(UIColor.specialDarkGreen, for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(startWorkoutButtonTapped), for: .touchUpInside)
        button.addShadowOnView()
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        backgroundColor = .clear
        addView(backgroundCellView)
        addView(imageBackgroundView)
        addView(imageCell)
        addView(workoutNameLabel)
        labelsStackView = UIStackView(arrangedSubviews: [repsLabel, setsLabel], axis: .horizontal, spacing: 10)
        addView(labelsStackView)
        contentView.addView(startWorkoutButton)
    }
    
    @objc private func startWorkoutButtonTapped() {
        print("Love Fil")
    }
}

extension WorkoutTableViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundCellView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            backgroundCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundCellView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundCellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            imageBackgroundView.topAnchor.constraint(equalTo: backgroundCellView.topAnchor, constant: 10),
            imageBackgroundView.leadingAnchor.constraint(equalTo: backgroundCellView.leadingAnchor, constant: 10),
            imageBackgroundView.bottomAnchor.constraint(equalTo: backgroundCellView.bottomAnchor, constant: -10),
            imageBackgroundView.widthAnchor.constraint(equalTo: backgroundCellView.widthAnchor, multiplier: 0.2),
            
            imageCell.centerXAnchor.constraint(equalTo: imageBackgroundView.centerXAnchor),
            imageCell.centerYAnchor.constraint(equalTo: imageBackgroundView.centerYAnchor),
            imageCell.heightAnchor.constraint(equalTo: imageBackgroundView.heightAnchor, multiplier: 0.8),
            imageCell.widthAnchor.constraint(equalTo: imageBackgroundView.widthAnchor, multiplier: 0.7),
            
            workoutNameLabel.topAnchor.constraint(equalTo: backgroundCellView.topAnchor, constant: 5),
            workoutNameLabel.leadingAnchor.constraint(equalTo: imageBackgroundView.trailingAnchor, constant: 10),
            workoutNameLabel.trailingAnchor.constraint(equalTo: backgroundCellView.trailingAnchor, constant: -10),
            
            labelsStackView.topAnchor.constraint(equalTo: workoutNameLabel.bottomAnchor, constant: 0),
            labelsStackView.leadingAnchor.constraint(equalTo: imageBackgroundView.trailingAnchor, constant: 10),
            labelsStackView.heightAnchor.constraint(equalToConstant: 25),
            
            startWorkoutButton.topAnchor.constraint(equalTo: labelsStackView.bottomAnchor, constant: 3),
            startWorkoutButton.leadingAnchor.constraint(equalTo: imageBackgroundView.trailingAnchor, constant: 10),
            startWorkoutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            startWorkoutButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}

