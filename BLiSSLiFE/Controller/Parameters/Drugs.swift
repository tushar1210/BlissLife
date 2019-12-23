//
//  Drugs.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 23/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class Drugs: UIViewController {

    @IBOutlet weak var bgVeiw: UIView!
    @IBOutlet weak var alcohol: CustomButton!
    @IBOutlet weak var tobacco: CustomButton!
    @IBOutlet weak var drugs: CustomButton!
    @IBOutlet weak var none: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgVeiw.roundCorners([.bottomLeft],radius: 80)
        alcohol.layer.cornerRadius = 9
        tobacco.layer.cornerRadius = 9
        drugs.layer.cornerRadius = 9
        none.layer.cornerRadius = 9

        
    }
    
    @IBAction func alcohol(_ sender: Any) {
        
        if alcohol.getBgColor() == .white {
            alcohol.bgColor(color: .systemYellow)
        }else{
            alcohol.bgColor(color: .white)
        }
        none.bgColor(color: .white)
    }
    
    @IBAction func tobacco(_ sender: Any) {
         if tobacco.getBgColor() == .white {
                   tobacco.bgColor(color: .systemYellow)
               }else{
                   tobacco.bgColor(color: .white)
               }
               none.bgColor(color: .white)
    }
    
    @IBAction func drugs(_ sender: Any) {
         if drugs.getBgColor() == .white {
                   drugs.bgColor(color: .systemYellow)
               }else{
                   drugs.bgColor(color: .white)
               }
               none.bgColor(color: .white)
    }
    
    @IBAction func none(_ sender: Any) {
        
        if none.getBgColor() == .white {
            alcohol.bgColor(color: .white)
            tobacco.bgColor(color: .white)
            drugs.bgColor(color: .white)
            none.bgColor(color: .systemYellow)
        }else{
            none.bgColor(color: .white)
        }
    }
    
}
