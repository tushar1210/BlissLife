//
//  PersonalDetails.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 12/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit
import DropDown

class PersonalDetails: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var male: CustomButton!
    @IBOutlet weak var female: CustomButton!
    @IBOutlet weak var other: CustomButton!
    @IBOutlet weak var day: CustomButton!
    @IBOutlet weak var month: CustomButton!
    @IBOutlet weak var year: CustomButton!
    
    let dayDropDown = DropDown()
    let monthDropDown = DropDown()
    let yearDropDown = DropDown()
    
    lazy var dropDowns:[DropDown] = {
        return [
            self.dayDropDown,
            self.monthDropDown,
            self.yearDropDown
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        male.layer.cornerRadius = 3
        female.layer.cornerRadius = 3
        other.layer.cornerRadius = 3
        setupDropDown()
    }
    
    func setupDropDown(){
        dayDropDown.anchorView = day
        monthDropDown.anchorView = month
        yearDropDown.anchorView = year
        dayDropDown.bottomOffset = CGPoint(x: 0, y: day.bounds.height)
        dayDropDown.dataSource = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
        monthDropDown.dataSource = ["January","February","March","April","May","June","July","August","September","November","October","November","December"]
        yearDropDown.dataSource = []
        for i in 1950...2019{
            yearDropDown.dataSource.append(String(i))
        }
    }

    
    @IBAction func day(_ sender: Any) {
        dayDropDown.show()
    }
    @IBAction func month(_ sender: Any) {
        monthDropDown.show()
    }
    @IBAction func year(_ sender: Any) {
        yearDropDown.show()
    }
    @IBAction func male(_ sender: Any) {
    }
    @IBAction func female(_ sender: Any) {
    }
    
    @IBAction func other(_ sender: Any) {
    }
}
