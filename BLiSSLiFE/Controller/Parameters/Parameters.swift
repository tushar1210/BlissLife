//
//  Parameters.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 16/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class Parameters: UIViewController {

    @IBOutlet weak var proceed: CustomButton!
    @IBOutlet weak var bg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        proceed.layer.cornerRadius = 33
        bg.roundCorners([.bottomLeft], radius: 80)
        // Do any additional setup after loading the view.
    }
    

}
