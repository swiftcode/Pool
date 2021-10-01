//
//  UIView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

extension UIView {
    func addConstraint(topAnchor: NSLayoutYAxisAnchor?,
                       leadingAnchor: NSLayoutXAxisAnchor?,
                       trailingAnchor: NSLayoutXAxisAnchor?,
                       bottomAnchor: NSLayoutYAxisAnchor?,
                       paddingTop: CGFloat,
                       paddingLeft: CGFloat,
                       paddingRight: CGFloat,
                       paddingBottom: CGFloat,
                       width: CGFloat,
                       height: CGFloat) {

        translatesAutoresizingMaskIntoConstraints = false

        if let topAnchor = topAnchor {
            self.topAnchor.constraint(equalTo: topAnchor, constant: paddingTop).isActive = true
        }

        if let leadingAnchor = leadingAnchor {
            self.leadingAnchor.constraint(equalTo: leadingAnchor, constant: paddingLeft).isActive = true
        }

        if let trailingAnchor = trailingAnchor {
            self.trailingAnchor.constraint(equalTo: trailingAnchor, constant: paddingRight).isActive = true
        }

        if let bottomAnchor = bottomAnchor {
            self.bottomAnchor.constraint(equalTo: bottomAnchor, constant: paddingBottom).isActive = true
        }

        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
