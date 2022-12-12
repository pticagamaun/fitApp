//
//  MainViewController.swift
//  fitApp
//
//  Created by Vadim on 11.12.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let headerView = HeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .specialBackground
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        view.addView(headerView)
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
        ])
    }
}


