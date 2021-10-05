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
        label.font = UIFont.preferredFont(forTextStyle: .title1)
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
    
    var teams: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Teams"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .title1)
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
        backgroundColor = UIColor.systemGray6
    }
    
    private func setupLayout() {
        week.addConstraint(
            topAnchor: topAnchor,
            leadingAnchor: leadingAnchor,
            trailingAnchor: nil,
            bottomAnchor: nil,
            paddingTop: 35.0,
            paddingLeft: 50.0,
            paddingRight: 0.0,
            paddingBottom: 0.0,
            width: 90.0,
            height: 40.0)
        
        weekNumber.addConstraint(
            topAnchor: topAnchor,
            leadingAnchor: leadingAnchor,
            trailingAnchor: nil,
            bottomAnchor: nil,
            paddingTop: 80.0,
            paddingLeft: 50.0,
            paddingRight: 80.0,
            paddingBottom: 0.0,
            width: 80.0,
            height: 35.0)
        
        teams.addConstraint(
            topAnchor: topAnchor,
            leadingAnchor: leadingAnchor,
            trailingAnchor: nil,
            bottomAnchor: nil,
            paddingTop: 37.0,
            paddingLeft: 150.0,
            paddingRight: 0.0,
            paddingBottom: 0.0,
            width: 80.0,
            height: 35.0)
    }
}
