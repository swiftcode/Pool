//
//  DataEntryViewController.swift
//  Pool
//
//  Created by Jared Paubel on 9/27/21.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    var dataEntryView = DataEntryView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    //MARK: - Setup and Layout
    func setupView() {
        [dataEntryView].forEach { view.addSubview($0) }
    }
    
    func setupLayout() {
        dataEntryView.frame = view.frame
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
