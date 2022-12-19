//
//  CalendarView.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

final class CalendarView: UIView {
    
    let calendarCollection = CalendarCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        backgroundColor = .specialGreen
        layer.cornerRadius = 15
        addView(calendarCollection)
    }
}

//MARK: - Constraints
extension CalendarView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            calendarCollection.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            calendarCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 105),
            calendarCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            calendarCollection.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
        ])
    }
}

