//
//  NavigationLabel.swift
//  Pool
//
//  Created by mpc on 10/6/21.
//

import Foundation
import UIKit

func navigationLabel(title: String) -> UILabel {
    let navigationLabel = UILabel(frame: .zero)

    navigationLabel.translatesAutoresizingMaskIntoConstraints = false
    navigationLabel.text = title
    return navigationLabel
}
