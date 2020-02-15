//
//  SignUp.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 07/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignUp: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var countryCodeTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var confirmTF: UITextField!
    @IBOutlet weak var signup: CustomButton!
    @IBOutlet weak var facebookButton: CustomButton!
    @IBOutlet weak var googleButton: CustomButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookButton.layer.cornerRadius = 33
        signup.layer.cornerRadius = 33
        bgView.roundCorners([.bottomLeft], radius: 80)
        
    }
    
    override func viewDidLayoutSubviews() {
        usernameTF.setUnderLine()
        emailTF.setUnderLine()
        countryCodeTF.setUnderLine()
        phoneTF.setUnderLine()
        passwordTF.setUnderLine()
        confirmTF.setUnderLine()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func checkFilled()->Bool{
        if (usernameTF.text != "" && emailTF.text != "" && countryCodeTF.text != "" && phoneTF.text != "" && passwordTF.text != "" && confirmTF.text != "") {
            return true
        }
        else{
            let alert = UIAlertController(title: "Incomplete informaton", message: "All fields are mandatory", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                alert.dismiss(animated: true) {
                    self.passwordTF.text = ""
                    self.confirmTF.text = ""
                }
                
            }
            alert.addAction(action)
            present(alert,animated: true)
            return false
        }
        
    }

    @IBAction func signup(_ sender: Any) {
        //TODO :- hit signup api
        
        if checkFilled(){
            let params:Dictionary<String,Any?> = ["username":usernameTF.text,"email":emailTF.text,"number":phoneTF.text,"password":passwordTF.text]
            let url = URL(string: "https://blisslife.herokuapp.com/users")!
            Alamofire.request(url, method: .post, parameters: params, encoding: JSONEncoding.default).responseJSON{
                response in
                guard let d = response.value else{print("Fail") ;return}
                let json=JSON(d)
                user.username = json["user"]["username"].stringValue
                user.email = json["user"]["email"].stringValue
                user.number = json["user"]["number"].stringValue
                user.uid = json["user"]["_id"].stringValue
            }
        }
    }
    @IBAction func googleButton(_ sender: Any) {
    }
    @IBAction func facebookButton(_ sender: Any) {
    }
    
    @IBAction func confirmButton(_ sender: Any) {
    }
}
