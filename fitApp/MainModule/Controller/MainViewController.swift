//
//  MainViewController.swift
//  fitApp
//
//  Created by Vadim on 11.12.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let headerView = HeaderView()
    private let workoutTableView = WorkoutTableView()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        headerView.setCornerRadius()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .specialBackground
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        view.addView(headerView)
        view.addView(workoutTableView)
        headerView.headerViewDelegate = self
    }
}

//MARK: - HeaderViewProtocol
extension MainViewController: HeaderViewProtocol {
    func addWorkout() {
        let newWorkoutVC = NewWorkoutViewController()
        newWorkoutVC.modalPresentationStyle = .fullScreen
        present(newWorkoutVC, animated: true)
    }
}

//MARK: - Constraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.27),
            
            workoutTableView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0),
            workoutTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            workoutTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            workoutTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}


