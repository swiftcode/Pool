//
//  ScoresView.swift
//  Pool
//
//  Created by mpc on 10/1/21.
//

import UIKit

class ScoresView: UIView {

    var welcome = Welcome()
  
    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        welcome.get("https://google.com")
   }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
   

}
