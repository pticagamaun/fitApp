//
//  WorkoutTableView.swift
//  fitApp
//
//  Created by Vadim on 14.12.2022.
//

import UIKit

final class WorkoutTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .none
        bounces = false
        allowsSelection = false
        separatorColor = .clear
        showsVerticalScrollIndicator = false
        delegate = self
        dataSource = self
        register(WorkoutTableViewCell.self, forCellReuseIdentifier: WorkoutTableViewCell.idWorkoutCell)
    }
    
}

extension WorkoutTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WorkoutTableViewCell.idWorkoutCell,
                                                       for: indexPath) as? WorkoutTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
