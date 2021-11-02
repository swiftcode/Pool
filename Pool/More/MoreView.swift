//
//  MoreView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

protocol NavigateDelegate: class {
    func navigateTo(viewController: UIViewController)
}

class MoreView: UIView, UITableViewDelegate, UITableViewDataSource {

    //MARK: - TableView
    var tableView = UITableView()

    //MARK: - Data
    let moreOptions = ["Data Entry", "Version"]

    //MARK: - Properties
    weak var delegate: NavigateDelegate?

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
        tableView.separatorStyle = .singleLine
        tableView.register(MoreCell.self, forCellReuseIdentifier: MoreCell.reusableIdentifier)
        tableView.tableFooterView = UIView()
    }

    private func setupLayout() {
        tableView.addConstraint(topAnchor: topAnchor, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, bottomAnchor: bottomAnchor, paddingTop: 0.0, paddingLeft: 0.0, paddingRight: 0.0, paddingBottom: 0.0, width: 0.0, height: 0.0)
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
        cell.option.text = moreOptions[row]

        if row == 1 {(
            cell.option.text = "\(moreOptions[row]): \(self.version)  Build \(self.build)")
        }

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row

        if row == 0 {
            let viewController = DataEntryTableViewController()
            channelSelected(viewController: viewController)
        }

        print("selected: \(moreOptions[row])")
    }

    //MARK: Delegate methods
    func channelSelected(viewController: UIViewController) {
        self.delegate?.navigateTo(viewController: viewController)
    }

}
