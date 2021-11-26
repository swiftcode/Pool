//
//  HomeView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class HomeView: UIView {

    var homeImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "sports2.jpg")
        view.contentMode = .scaleAspectFill
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
        backgroundColor = UIColor.systemGray6
        addSubview(homeImage)
    }

    private func setupLayout() {
        homeImage.addConstraint(topAnchor: topAnchor, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, bottomAnchor: bottomAnchor, paddingTop: 0.0, paddingLeft: 0.0, paddingRight: 0.0, paddingBottom: 0.0, width: 0.0, height: 0.0)
    }
}
