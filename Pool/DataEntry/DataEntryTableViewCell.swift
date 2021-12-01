//
//  DataEntryTableViewCell.swift
//  Pool
//
//  Created by Jared Paubel on 10/18/21.
//

import UIKit

class DataEntryTableViewCell: UITableViewCell {
    static var reuseIdentifier: String = "cell"

    var teamName: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var weeklyLetter: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.7
        textField.textAlignment = .center
        textField.allowsEditingTextAttributes = true
        return textField
    }()
    
    //MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupView()
        setupLayout()
        setupActions()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupView() {
        [teamName, weeklyLetter].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
         NSLayoutConstraint.activate([
            teamName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            teamName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.0),
            teamName.widthAnchor.constraint(equalToConstant: 140.0),
            teamName.heightAnchor.constraint(equalTo: contentView.heightAnchor),

            weeklyLetter.centerYAnchor.constraint(equalTo: centerYAnchor),
            weeklyLetter.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5.0),
            weeklyLetter.widthAnchor.constraint(equalToConstant: 50.0),
            weeklyLetter.heightAnchor.constraint(equalToConstant: 35.0)
        ])
    }

    private func setupActions() {
        weeklyLetter.addTarget(self, action: #selector(toggleEditing(textField:)), for: .touchUpInside)
    }

    @objc func toggleEditing(textField: UITextField) {
        textField.becomeFirstResponder()
    }
}
