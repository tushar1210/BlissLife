//
//  Allergies.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 17/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class Allergies: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var dustLabel: UITextView!
    @IBOutlet weak var pollenLabel: UITextView!
    @IBOutlet weak var peanutsLabel: UITextView!
    @IBOutlet weak var soyLabel: UITextView!
    @IBOutlet weak var otherTF: UITextField!
    @IBOutlet weak var dustButton: UIButton!
    @IBOutlet weak var pollenButton: UIButton!
    @IBOutlet weak var peanutsButton: UIButton!
    @IBOutlet weak var soyButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.roundCorners([.bottomLeft], radius: 80)
        dustLabel.layer.borderWidth=1
        dustLabel.layer.borderColor = UIColor.black.cgColor
        
    }
    

    
    @IBAction func otherButton(_ sender: Any) {
    }
    @IBAction func soyButton(_ sender: Any) {
    }
    @IBAction func peanutsButton(_ sender: Any) {
    }
    @IBAction func pollenButton(_ sender: Any) {
    }
    @IBAction func dustButton(_ sender: Any) {
    }
    
}
