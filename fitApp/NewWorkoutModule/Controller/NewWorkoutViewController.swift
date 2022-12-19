//
//  NewWorkoutViewController.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class NewWorkoutViewController: UIViewController {
    
    private let titleLabel = UILabel(text: "NEW WORKOUT", textColor: .specialBlack, font: .robotoBold24)
    private lazy var closeButton = CloseButton(self, selector: #selector(closeButtonTap))
    private let nameView = NameView()
    private let dateAndRepeatView = DateAndReapeatView()
    private let repsOrTimerView = RepsOrTimerView()
    private var stackView = UIStackView()
    private lazy var saveButton = GreenButton(text: "SAVE", self, selector: #selector(saveButtonTap))
    
    override func viewDidLayoutSubviews() {
        closeButton.layer.cornerRadius = closeButton.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setContstraints()
    }
    
    //MARK: - Private Funcs
    private func setupView() {
        view.backgroundColor = .specialBackground
        view.addView(titleLabel)
        view.addView(closeButton)
        stackView = UIStackView(arrangedSubviews: [nameView,
                                                   dateAndRepeatView,
                                                   repsOrTimerView], axis: .vertical, spacing: 20)
        view.addView(stackView)
        view.addView(saveButton)
        
    }
    
    @objc private func closeButtonTap() {
        dismiss(animated: true)
    }
    
    @objc private func saveButtonTap() {
        print("Fil the best")
    }
}



//MARK: - Contstraints
extension NewWorkoutViewController {
    
    private func setContstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 30),
            closeButton.widthAnchor.constraint(equalToConstant: 30),
            
            nameView.heightAnchor.constraint(equalToConstant: 60),
            dateAndRepeatView.heightAnchor.constraint(equalToConstant: 115),
            repsOrTimerView.heightAnchor.constraint(equalToConstant: 340),
            
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            saveButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 25),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            saveButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
}

