//
//  DataEntryView.swift
//  Pool
//
//  Created by Jared Paubel on 9/27/21.
//

import UIKit

class DataEntryView: UIView {
    var week: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Week"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()

    var weekNumber: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.placeholder = "Week #"
        view.textColor = .black
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 0.5
        return view
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - Setup and Layout
    func setupView() {
        [week, weekNumber].forEach { addSubview($0) }
        backgroundColor = UIColor.systemGray6
    }
    
    private func setupLayout() {
        let guide = safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            week.topAnchor.constraint(equalTo: guide.topAnchor, constant: 15.0),
            week.leadingAnchor.constraint(equalTo: guide.centerXAnchor),
            week.widthAnchor.constraint(equalToConstant: 90.0),
            week.heightAnchor.constraint(equalToConstant: 40.0),

            weekNumber.topAnchor.constraint(equalTo: week.topAnchor),
            weekNumber.leadingAnchor.constraint(equalTo: week.trailingAnchor, constant: 2.0),
            weekNumber.widthAnchor.constraint(equalToConstant: 90.0),
            weekNumber.heightAnchor.constraint(equalToConstant: 40.0)
        ])
    }
}
