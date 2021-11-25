//
//  MoreView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

protocol NavigateDelegate: AnyObject {
    func navigateTo(viewController: UIViewController)
}

class MoreView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Properties
    var weekNumberLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var weekNumber: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

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
    }

    //MARK: Delegate methods
    func channelSelected(viewController: UIViewController) {
        self.delegate?.navigateTo(viewController: viewController)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.centerYAnchor.constraint(equalTo: centerYAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5.0),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }

}
