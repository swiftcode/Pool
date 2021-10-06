//
//  MoreViewController.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class MoreViewController: UIViewController, NavigateDelegate {

    var moreView: MoreView = {
        let view = MoreView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupLayout()
    }

    private func setupView() {
        view.addSubview(moreView)
        moreView.delegate = self
        self.title = "More"
    }

    private func setupLayout() {
        moreView.addConstraint(topAnchor: view.topAnchor, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, bottomAnchor: view.bottomAnchor, paddingTop: 0.0, paddingLeft: 0.0, paddingRight: 0.0, paddingBottom: 0.0, width: 0.0, height: 0.0)
    }

    //MARK: - Actions
    func navigateTo(viewController: UIViewController) {
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
