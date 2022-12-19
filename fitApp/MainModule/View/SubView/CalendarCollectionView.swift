//
//  CalendarCollectionView.swift
//  fitApp
//
//  Created by Vadim on 12.12.2022.
//

import UIKit

final class CalendarCollectionView: UICollectionView {
    
    private let flowLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: flowLayout)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        flowLayout.minimumInteritemSpacing = 5
        backgroundColor = .none
        register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: CalendarCollectionViewCell.idCalendarCell)
        delegate = self
        dataSource = self
    }
}

//MARK: - ICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
extension CalendarCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: CalendarCollectionViewCell.idCalendarCell, for: indexPath) as? CalendarCollectionViewCell else {return UICollectionViewCell()}
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 9, height: collectionView.frame.height)
    }
    
}
