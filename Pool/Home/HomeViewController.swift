//
//  HomeViewController.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class HomeViewController: UIViewController {

    var teams: [TeamData] = []

    var homeView: HomeView = {
        let view = HomeView(frame: .zero)
        return view
    }()

  override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.title = "Home"
        
        ParseJSON()
        view.addSubview(homeView)

        homeView.addConstraint(topAnchor: view.topAnchor, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, bottomAnchor: view.bottomAnchor, paddingTop: 0.0, paddingLeft: 0.0, paddingRight: 0.0, paddingBottom: 0.0, width: 0.0, height: 0.0)
    }
    

}

