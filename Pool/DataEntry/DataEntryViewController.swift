//
//  DataEntryViewController.swift
//  Pool
//
//  Created by Jared Paubel on 9/27/21.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    var dataEntryView = DataEntryView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()        
    }
    
    //MARK: - Setup and Layout
    func setupView() {
        [dataEntryView].forEach { view.addSubview($0) }

        self.title = "Team Setup"
    }
    
    func setupLayout() {
        dataEntryView.addConstraint(topAnchor: view.topAnchor, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, bottomAnchor: view.bottomAnchor, paddingTop: 70.0, paddingLeft: 0.0, paddingRight: 0.0, paddingBottom: 0.0, width: 0.0, height: 0.0)
    }
}
