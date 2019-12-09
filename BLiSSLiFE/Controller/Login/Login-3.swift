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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func login(_ sender: Any) {
        let params = ["email":userNameTF.text,"password":passwordTF.text]
        let url = URL(string: "https://blisslife.herokuapp.com/users/login")
        var request = URLRequest(url: url!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let data:Data = NSKeyedArchiver.archivedData(withRootObject: params)
        request.httpBody = data
        Alamofire.request(request).responseJSON { (response) in
            print(response.data!)
        }
        
//        Alamofire.request(url!, method: .post, parameters: params).responseJSON {
//            response in
//            print(response.value!)
//        }
        
    }
    

}

