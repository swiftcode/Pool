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
        label.textColor = .systemPink
        return label
    }()
    
            
    var weekNumber: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.placeholder = "Week #"
        view.textColor = .black
        return view
    }()
        
    
    var teams: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Teams"
        label.textColor = .red
        return label
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
        [week, weekNumber, teams].forEach { addSubview($0) }
        backgroundColor = UIColor.systemGray5
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            week.topAnchor.constraint(equalTo: topAnchor, constant: 80),
            week.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            week.heightAnchor.constraint(equalToConstant: 35),
            week.widthAnchor.constraint(equalToConstant: 80),
            
            weekNumber.bottomAnchor.constraint(equalTo: week.bottomAnchor, constant: 60),
            weekNumber.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            weekNumber.heightAnchor.constraint(equalToConstant: 35),
            weekNumber.widthAnchor.constraint(equalToConstant: 80),
            
            teams.topAnchor.constraint(equalTo: topAnchor, constant: 80),
            teams.leadingAnchor.constraint(equalTo: week.trailingAnchor, constant: 50),
            teams.heightAnchor.constraint(equalToConstant: 35),
            teams.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}
