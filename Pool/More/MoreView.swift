//
//  MoreView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class MoreView: UIView, UITableViewDelegate, UITableViewDataSource {

    //MARK: - TableView
    var tableView = UITableView()

    //MARK: - Data
    let moreOptions = ["Data Entry", "Version"]

    //MARK: - Properties
    var version: String = {
        let ver: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        return ver
    }()

    var build: String = {
        let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
        return buildNumber
    }()


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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(MoreCell.self, forCellReuseIdentifier: MoreCell.reusableIdentifier)
        tableView.tableFooterView = UIView()
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([


        ])
    }

    private func setupActions() {

    }

    //MARK: - TableView Delegates
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moreOptions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MoreCell.reusableIdentifier) as! MoreCell
        let row = indexPath.row

        cell.selectionStyle = .none

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row

        print("selected: \(moreOptions[row])")
    }
}
