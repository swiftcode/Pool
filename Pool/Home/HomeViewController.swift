//
//  HomeViewController.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.title = "Home"
        
        parseJSON()
    }
    
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "teams", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        var result: TeamData?
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(TeamData.self, from: jsonData)
            
            if let result = result {
                print(result)
            }
            else {
                print("Failed to parse")
            }
            return
        }
        catch {
            print("Error: \(error)")
        }
    }
}

