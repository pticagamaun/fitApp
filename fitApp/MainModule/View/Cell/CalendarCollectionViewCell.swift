//
//  CalendarCollectionViewCell.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

final class CalendarCollectionViewCell: UICollectionViewCell {
    
    static let idCalendarCell = "idCalendarCell"
    private let dateOfDayLabel = UILabel(text: "We")
    private let numberOfDayLabel = UILabel(text: "20",
                                           textColor: .specialBlack,
                                           font: .robotoMedim20)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        backgroundColor = .specialYellow
        layer.cornerRadius = 10
        addView(dateOfDayLabel)
        addView(numberOfDayLabel)
    }
    
}

extension CalendarCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dateOfDayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            dateOfDayLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            numberOfDayLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            numberOfDayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
}
