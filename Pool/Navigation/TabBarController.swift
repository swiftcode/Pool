//
//  TabBarController.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Properties
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let analyticsViewController = UINavigationController(rootViewController: AnalyticsViewController())
        let scoresViewController = UINavigationController(rootViewController: ScoresViewController())
        let moreViewController = UINavigationController(rootViewController: MoreViewController())

        //MARK: - TabBar image setup
        let config = UIImage.SymbolConfiguration(weight: .heavy)

        let homeImage = UIImage(systemName: "house", withConfiguration: config)
        let analyticsImage = UIImage(systemName: "chart.bar.xaxis", withConfiguration: config)
        let scoresImage = UIImage(systemName: "sportscourt", withConfiguration: config)
        let moreImage = UIImage(systemName: "ellipsis.circle", withConfiguration: config)

        //MARK: - TabBar item setup
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: homeImage, selectedImage: homeImage)
        analyticsViewController.tabBarItem = UITabBarItem(title: "Analytics", image: analyticsImage, selectedImage: analyticsImage)
        scoresViewController.tabBarItem = UITabBarItem(title: "Scores", image: scoresImage, selectedImage: scoresImage)
        moreViewController.tabBarItem = UITabBarItem(title: "More", image: moreImage, selectedImage: moreImage)

        //MARK: - Navigation
        homeViewController.navigationController?.navigationBar.topItem?.title = "Home"
        analyticsViewController.navigationController?.navigationBar.topItem?.title = "Analytics"
        scoresViewController.navigationController?.navigationBar.topItem?.title = "Scores"
        moreViewController.navigationController?.navigationBar.topItem?.title = "More"

        //MARK: - Background color
        let backgroundColor = UIColor.white
        moreViewController.navigationBar.barTintColor = backgroundColor

        //MARK: - ViewController configuration
        let viewControllerList = [homeViewController, analyticsViewController, scoresViewController, moreViewController]
        viewControllers = viewControllerList
        view.backgroundColor = .systemGray6

        //MARK: - TabBar configuration
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .systemRed
        UITabBar.appearance().unselectedItemTintColor = .black
    }
}
