//
//  Food.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 30/01/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit

class Food: UIViewController {

    @IBOutlet weak var hamburger: UIButton!
    @IBOutlet weak var search: UIButton!
    @IBOutlet weak var bookmark: UIButton!
    @IBOutlet weak var recentView: UIView!
    @IBOutlet weak var recentRecipe: UILabel!
    @IBOutlet weak var recentImage: UIImageView!
    @IBOutlet weak var recentTag: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        recentView.layer.cornerRadius = 6
        recentTag.layer.borderColor = UIColor.systemYellow.cgColor
        recentTag.layer.borderWidth=1
        recentTag.layer.cornerRadius = 7
//        recentView.layer.shadowColor = UIColor.gray.cgColor
        recentView.addShadow()
    }
    

    

}
