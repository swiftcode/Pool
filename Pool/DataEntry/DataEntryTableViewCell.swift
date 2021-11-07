//
//  DataEntryTableViewCell.swift
//  Pool
//
//  Created by Jared Paubel on 10/18/21.
//

import UIKit

class DataEntryTableViewCell: UITableViewCell {

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
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    private func setupView() {
        [teamName, weeklyCode].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            teamName.centerYAnchor.constraint(equalTo: centerYAnchor),
            teamName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5.0),
            teamName.trailingAnchor.constraint(equalTo: trailingAnchor),
            teamName.heightAnchor.constraint(equalTo: contentView.heightAnchor)
        ])
    }

}
