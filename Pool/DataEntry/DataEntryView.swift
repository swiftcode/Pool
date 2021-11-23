//
//  DataEntryView.swift
//  Pool
//
//  Created by Jared Paubel on 9/27/21.
//

import UIKit

class DataEntryView: UIView {
    
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
    }
    
    private func setupLayout() {
    }
}
