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
        let moreViewController = UINavigationController(rootViewController: MoreViewController())

        //MARK: - TabBar image setup
        let config = UIImage.SymbolConfiguration(weight: .heavy)
        let homeImage = UIImage(systemName: "house", withConfiguration: config)
        let moreImage = UIImage(systemName: "ellipsis.circle", withConfiguration: config)

        //MARK: - TabBar item setup
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: homeImage, selectedImage: homeImage)
        moreViewController.tabBarItem = UITabBarItem(title: "Menu", image: moreImage, selectedImage: moreImage)

        //MARK: - Navigation
        homeViewController.navigationController?.navigationBar.topItem?.title = "Home"
        moreViewController.navigationController?.navigationBar.topItem?.title = "Menu"

        //MARK: - Background color
        let backgroundColor = UIColor.white
        moreViewController.navigationBar.barTintColor = backgroundColor

        //MARK: - ViewController configuration
        let viewControllerList = [homeViewController, moreViewController]
        viewControllers = viewControllerList
        view.backgroundColor = .systemGray6

        //MARK: - TabBar configuration
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .systemRed
        UITabBar.appearance().unselectedItemTintColor = .black
    }
}
