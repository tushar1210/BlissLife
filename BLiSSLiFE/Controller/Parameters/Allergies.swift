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
        setupButtons(button: dustButton)
        setupButtons(button: pollenButton)
        setupButtons(button: peanutsButton)
        setupButtons(button: soyButton)
        setupButtons(button: otherButton)
        otherTF.setUnderLine()
        
    }
    
    func setupButtons(button:UIButton){
        button.layer.cornerRadius = button.frame.width/2
        button.clipsToBounds=true
        button.layer.borderWidth=1
        button.layer.borderColor = UIColor.gray.cgColor
        button.backgroundColor = .clear
    }

    
    @IBAction func otherButton(_ sender: Any) {

        if otherButton.backgroundColor == .clear{
            otherButton.backgroundColor = .systemYellow
        }else{
            otherButton.backgroundColor = .clear
        }
        
    }
    @IBAction func soyButton(_ sender: Any) {
        if soyButton.backgroundColor == .clear{
            soyButton.backgroundColor = .systemYellow
        }else{
            soyButton.backgroundColor = .clear
        }
    }
    @IBAction func peanutsButton(_ sender: Any) {
        if peanutsButton.backgroundColor == .clear{
            peanutsButton.backgroundColor = .systemYellow
        }else{
            peanutsButton.backgroundColor = .clear
        }
    }
    @IBAction func pollenButton(_ sender: Any) {
        if pollenButton.backgroundColor == .clear{
            pollenButton.backgroundColor = .systemYellow
        }else{
            pollenButton.backgroundColor = .clear
        }
    }
    @IBAction func dustButton(_ sender: Any) {
        if dustButton.backgroundColor == .clear{
            dustButton.backgroundColor = .systemYellow
        }else{
            dustButton.backgroundColor = .clear
        }
    }
    
}
