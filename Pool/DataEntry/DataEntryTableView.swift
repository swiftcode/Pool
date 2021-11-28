//
//  DataEntryTableView.swift
//  Pool
//
//  Created by mpc on 11/21/21.
//

import UIKit

typealias dict = [String : Any?]

class DataEntryTableView: UIView, UITextFieldDelegate {

    //MARK: - Completion Handler
    typealias completion = (Bool) -> ()

    //MARK: - Data
    let weekNumber = Array(1...5)
    var teams: [Team] = []
    var currentLetter: String = ""

    var week: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Week"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.textAlignment = .right
        return label
    }()

    var currentWeekNumber: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.textColor = .black
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 0.5
        view.textAlignment = .center
        view.keyboardType = .numberPad
        return view
    }()

    var tableView = UITableView()

    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)

        getTeams { (completion) in
            self.teams = self.teams.sorted(by: { $0.name < $1.name })
        }

        setupView()
        setupLayout()
        setupActions()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK: - Setup and Layout
    private func setupView() {
        [currentWeekNumber, week, tableView].forEach { addSubview($0) }
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(DataEntryTableViewCell.self, forCellReuseIdentifier: DataEntryTableViewCell.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func setupLayout() {
        let guide = safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            week.topAnchor.constraint(equalTo: guide.topAnchor),
            week.trailingAnchor.constraint(equalTo: currentWeekNumber.leadingAnchor, constant: -8.0),
            week.widthAnchor.constraint(equalToConstant: 80.0),
            week.heightAnchor.constraint(equalToConstant: 35.0),

            currentWeekNumber.topAnchor.constraint(equalTo: week.topAnchor),
            currentWeekNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5.0),
            currentWeekNumber.heightAnchor.constraint(equalToConstant: 35.0),
            currentWeekNumber.widthAnchor.constraint(equalToConstant: 50.0),
            
            tableView.topAnchor.constraint(equalTo: currentWeekNumber.bottomAnchor, constant: 4.0),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

extension DataEntryTableView: UITableViewDelegate { }

extension DataEntryTableView: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DataEntryTableViewCell.reuseIdentifier, for: indexPath) as! DataEntryTableViewCell

        cell.weeklyLetter.delegate = self
        cell.teamName.text = teams[indexPath.row].name
        cell.weeklyLetter.text = randomLetter()
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60.0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = self.tableView.cellForRow(at: indexPath) as? DataEntryTableViewCell {
            cell.weeklyLetter.becomeFirstResponder()
        }
    }
}

extension DataEntryTableView {
    func randomLetter() -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456"
        return String((0..<1).map{ _ in letters.randomElement()! })
    }
}

extension DataEntryTableView {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.currentLetter = textField.text ?? ""
        textField.text = ""
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else { return true }

        if text.isEmpty {
            textField.text = currentLetter
        }

        return true
    }
}

extension DataEntryTableView {
    func getTeams(completion: @escaping completion) {
        if let url = Bundle.main.url(forResource: "teams", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let teams = try decoder.decode([Team].self, from: data)
                self.teams = teams
                completion(true)
            } catch {
                print("error:\(error)")
                completion(false)
            }
        }
    }
}
