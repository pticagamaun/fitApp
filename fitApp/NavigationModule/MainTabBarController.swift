//
//  MainTabBarController.swift
//  fitApp
//
//  Created by Vadim on 16.12.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setupTabBar()
    }
    
    private func configure() {
        tabBar.backgroundColor = .specialTabBar
        tabBar.tintColor = .specialDarkGreen
        tabBar.unselectedItemTintColor = .specialBlack
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.specialLightBrown.cgColor
    }
    
    private func setupTabBar() {
        let mainVC = MainViewController()
        let statVC = StatisticsViewController()
        setViewControllers([mainVC, statVC], animated: true)
        guard let items = tabBar.items else {return}
        items[0].title = "Main"
        items[0].image = UIImage(named: "main")
        items[1].title = "Statistics"
        items[1].image = UIImage(named: "statistics")
        UITabBarItem.appearance().setTitleTextAttributes([.font : UIFont(name: "Roboto-Bold", size: 12) as Any], for: .normal)
    }
}
