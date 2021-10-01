//
//  MoreCell.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class MoreCell: UITableViewCell {

    static var reusableIdentifier: String = "moreCell"

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
    }

    //MARK: - Setup and Layout
    private func setupView() {

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([


        ])
    }
}
