//
//  BloodPressure.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 16/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class BloodPressure: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var go: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.roundCorners([.bottomLeft], radius: 80)
        firstTF.layer.cornerRadius = 9
        secondTF.layer.cornerRadius = 9
        firstTF.addTarget(self, action: #selector(BloodPressure.textFieldDidChange(_:)), for: UIControl.Event.editingDidBegin)
        secondTF.addTarget(self, action: #selector(BloodPressure.textFieldDidChange(_:)), for: UIControl.Event.editingDidBegin)
        firstTF.addTarget(self, action: #selector(BloodPressure.textFieldDidChange(_:)), for: UIControl.Event.editingDidEnd)
        secondTF.addTarget(self, action: #selector(BloodPressure.textFieldDidChange(_:)), for: UIControl.Event.editingDidEnd)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        if firstTF.isEditing {
            firstTF.layer.borderColor = UIColor.systemYellow.cgColor
            firstTF.layer.borderWidth = 1
        }
        
        else if !firstTF.isEditing{
            firstTF.layer.borderColor = UIColor.clear.cgColor
        }
        
        if secondTF.isEditing{
            secondTF.layer.borderWidth = 1
            secondTF.layer.borderColor = UIColor.systemYellow.cgColor
        }
        else if !secondTF.isEditing{
            secondTF.layer.borderColor = UIColor.clear.cgColor
        }

    }
    
    @IBAction func go(_ sender: Any) {
        if(firstTF.text != "" && secondTF.text != ""){
            user.parameters["bloodPreasure"] = [firstTF!.text!,secondTF!.text!]
        }
        
        
    }
    

}
