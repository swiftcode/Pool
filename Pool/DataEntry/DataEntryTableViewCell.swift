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
    
    
    var weeklyCode: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "Enter week number"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    //MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupView()
        setupLayout()
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
        [teamName, weeklyCode].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            teamName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            teamName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5.0),
            teamName.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            
            weeklyCode.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5.0),
            weeklyCode.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            weeklyCode.heightAnchor.constraint(equalTo: contentView.heightAnchor),
        ])
    }
}
