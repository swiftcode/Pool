//
//  DataEntryTableViewCell.swift
//  Pool
//
//  Created by Jared Paubel on 10/18/21.
//

import UIKit

class DataEntryTableViewCell: UITableViewCell {

    static var reusableIdentifier: String = "cell"

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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
