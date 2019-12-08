//
//  Login-2.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 05/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class Login_2: UIViewController {

    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var skip: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        setUpButtons(globeButton: login)

        
    }
    func setUpButtons(globeButton:UIButton){
        globeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        globeButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        globeButton.layer.shadowOpacity = 1.0
        globeButton.layer.shadowRadius = 0.0
        globeButton.layer.masksToBounds = false
        globeButton.layer.cornerRadius = 4.0
    }

}
