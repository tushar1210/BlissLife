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
    @IBOutlet weak var feet: UITextField!
    @IBOutlet weak var inches: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var done: CustomButton!
    @IBOutlet weak var skip: UIButton!
    
    let dayDropDown = DropDown()
    let monthDropDown = DropDown()
    let yearDropDown = DropDown()
    var gender = ""
    
    lazy var dropDowns:[DropDown] = {
        return [
            self.dayDropDown,
            self.monthDropDown,
            self.yearDropDown
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        male.layer.cornerRadius = 9
        female.layer.cornerRadius = 9
        other.layer.cornerRadius = 9
        done.layer.cornerRadius = 33
        day.layer.cornerRadius = 6
        month.layer.cornerRadius = 6
        year.layer.cornerRadius = 6
        feet.setUnderLine()
        inches.setUnderLine()
        weight.setUnderLine()
        setupDropDown()
    }
    
    func setupDropDown(){
        dayDropDown.anchorView = day
        monthDropDown.anchorView = month
        yearDropDown.anchorView = year
        
        dayDropDown.bottomOffset = CGPoint(x: 0, y: day.bounds.height)
        monthDropDown.bottomOffset = CGPoint(x: 0, y: month.bounds.height)
        yearDropDown.bottomOffset = CGPoint(x: 0, y: year.bounds.height)
        
        dayDropDown.dataSource = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
        monthDropDown.dataSource = ["January","February","March","April","May","June","July","August","September","November","October","November","December"]
        yearDropDown.dataSource = []
        for i in 0...100{
            yearDropDown.dataSource.append(String(2019-i))
        }
        
        dropDowns.forEach {
            $0.direction = .bottom
            $0.cellNib = UINib(nibName: "ProfileCell", bundle: nil)
            $0.backgroundColor = .white
            $0.selectionBackgroundColor = .systemYellow
            $0.customCellConfiguration = { (index: Index, item: String, cell: DropDownCell) -> Void in
                guard let cell = cell as? ProfileCell else { return }
                
                // Setup your custom UI components
                cell.optionLabel.font = cell.optionLabel.font.withSize(8)
            }
            
        }
        
        
        
        dayDropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.day.setTitle(item, for: .normal)
        }
        monthDropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.month.setTitle(item, for: .normal)
        }
        yearDropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.year.setTitle(item, for: .normal)
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
        male.bgColor(color: UIColor(red: 255, green: 213, blue: 0, alpha: 1))
        female.bgColor(color: .white)
        other.bgColor(color: .white)
        gender = "Male"
    }
    @IBAction func female(_ sender: Any) {
        female.bgColor(color: UIColor(red: 255, green: 213, blue: 0, alpha: 1))
//        female.bgColor(color: blissYellow)
        male.bgColor(color: .white)
        other.bgColor(color: .white)
        gender = "Female"
    }
    @IBAction func other(_ sender: Any) {
        other.bgColor(color: UIColor(red: 255, green: 213, blue: 0, alpha: 1))
        female.bgColor(color: .white)
        male.bgColor(color: .white)
        gender = "Other"
    }
    @IBAction func done(_ sender: Any) {
        if dayDropDown.selectedItem != nil {
            user.age["day"] = dayDropDown.selectedItem
        }
        if monthDropDown.selectedItem != nil {
            user.age["month"] = monthDropDown.selectedItem
        }
        if yearDropDown.selectedItem != nil {
            user.age["day"] = yearDropDown.selectedItem
        }
        if let f = feet.text {
            user.height["feet"] = f
        }
        print(user.height["feet"]!)
        if let i = inches.text{
            user.height["inches"] = i
        }
        if let k = weight.text{
            user.weight = k
        }
    }
}
