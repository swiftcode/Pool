//
//  DataEntryTableViewController.swift
//  Pool
//
//  Created by Jared Paubel on 10/18/21.
//

import UIKit

class DataEntryTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Data
    let weekNumber = Array(1..<5)
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }

    func setupView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(DataEntryTableViewCell.self, forCellReuseIdentifier: DataEntryTableViewCell.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 //weekNumber.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DataEntryTableViewCell.reuseIdentifier, for: indexPath) as! DataEntryTableViewCell

        cell.textLabel?.text = "Cell \(indexPath.row + 1)"
        cell.teamName.text = "Test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60.0
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
