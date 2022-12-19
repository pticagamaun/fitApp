//
//  StatisticsViewController.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    private let titleLabel = UILabel(text: "STATISTICS", textColor: .specialBlack, font: .robotoBold24)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .specialBackground
        view.addView(titleLabel)
    }
}

//MARK: - Constraints
extension StatisticsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
        ])
    }
}

