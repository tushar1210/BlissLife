//
//  Login-3.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 08/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Login_3: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        bgView.roundCorners([.bottomLeft], radius: 80)
        
    }
    

    @IBAction func login(_ sender: Any) {
    }
    

}
