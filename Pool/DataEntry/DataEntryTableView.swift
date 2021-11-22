//
//  DataEntryTableView.swift
//  Pool
//
//  Created by mpc on 11/21/21.
//

import UIKit

class DataEntryTableView: UIView {

    //MARK: - Data
    let weekNumber = Array(1..<5)
    let teamNames = ["Cowboys", "Cardinals", "Ravens", "Chiefs", "Eagles"]

    let tableView = UITableView()

    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupLayout()
        setupActions()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK: - Setup and Layout
    private func setupView() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(DataEntryTableViewCell.self, forCellReuseIdentifier: DataEntryTableViewCell.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    private func setupActions() {

    }
}

extension DataEntryTableView: UITableViewDelegate { }

extension DataEntryTableView: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weekNumber.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DataEntryTableViewCell.reuseIdentifier, for: indexPath) as! DataEntryTableViewCell

        cell.teamName.text = teamNames[indexPath.row]
        cell.weeklyLetter.text = "A"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60.0
    }
}
