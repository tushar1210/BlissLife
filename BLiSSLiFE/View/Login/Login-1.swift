//
//  Login-1.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 05/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class Login_1: UIViewController {

    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.roundCorners([.bottomLeft], radius: 80)
        print("1")
        _ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(timerAction), userInfo: nil, repeats: false)
        }
        // Do any additional setup after loading the view.
    
    @objc func timerAction() {
            performSegue(withIdentifier: "1", sender: nil)
        }
}
    

    


