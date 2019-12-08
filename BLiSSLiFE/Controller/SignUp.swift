//
//  SignUp.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 07/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class SignUp: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var countryCodeTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmTF: UITextField!
    @IBOutlet weak var signup: CustomButton!
    
    @IBOutlet weak var facebookButton: CustomButton!
    @IBOutlet weak var googleButton: CustomButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookButton.layer.cornerRadius = 33
        signup.layer.cornerRadius = 33
        
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
    


    @IBAction func signup(_ sender: Any) {
    }
    @IBAction func googleButton(_ sender: Any) {
    }
    @IBAction func facebookButton(_ sender: Any) {
    }
    
}
