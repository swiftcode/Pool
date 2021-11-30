//
//  DataEntryTableViewController.swift
//  Pool
//
//  Created by Jared Paubel on 10/18/21.
//

import UIKit

class DataEntryTableViewController: UIViewController {

    var dataEntryTableView: DataEntryTableView = {
        let view = DataEntryTableView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
        addNavigationButton()
    }

    func setupView() {
        view.addSubview(dataEntryTableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            dataEntryTableView.topAnchor.constraint(equalTo: view.topAnchor),
            dataEntryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dataEntryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dataEntryTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func addNavigationButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTapped))
    }

    @objc func saveTapped() {
        print("saveTapped")
    }
}
