//
//  MoreViewController.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class MoreViewController: UIViewController {

    var moreView: MoreView = {
        let view = MoreView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        moreView.frame = view.bounds
    }
}
