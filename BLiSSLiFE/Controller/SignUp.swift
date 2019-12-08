//
//  SignUp.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 07/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class SignUp: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var countryCodeTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmTF: UITextField!
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidLayoutSubviews() {
        usernameTF.setUnderLine()
        emailTF.setUnderLine()
        countryCodeTF.setUnderLine()
        phoneTF.setUnderLine()
        passwordTF.setUnderLine()
        confirmTF.setUnderLine()
        countryCodeTF.setSideLine()
    }
    

    @IBAction func loginButton(_ sender: Any) {
    }
    @IBAction func googleButton(_ sender: Any) {
    }
    @IBAction func facebookButton(_ sender: Any) {
    }
    
}
